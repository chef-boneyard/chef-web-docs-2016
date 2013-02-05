.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


High Availability

Private Chef can operate in a High Availability configuration that provides automated failover for the stateful components in the systems architecture. The architecture has servers split into two segments, the front-end and back-end. The front-end servers handle API and Web UI requests, while the back-end handles data storage and retrieval, which consists of:

* couchdb
* postgresql
* opscode-solr
* rabbitmq
* redis
* cookbook data

Under the hood, we achieve this failover through:

* Asynchronous block level replication of an LVM logical volume via DRBD between two back-end servers.
* Primary/Backup cluster election using VRRP over unicast TCP/IP via keepalived.
* keepalived manages assigning a Virtual IP Address (VIP) to the Primary server based on the results of the election.

.. image:: ha-topology

The front-end servers require load-balancers provided by the customer. Opscode recommends:

* Hardware load-balancers (such as F5 or NetScaler)
* SSL off-loading
* Round-robin as the load-balancing algorithm




Scalability

Front-end scalability is achieved through horizontally scaling the number of front-end servers.

Back-end scalability is achieved through vertically scaling the back-end servers - more memory, CPU, and faster disks will all contribute to getting more throughput from the back-end servers. Faster disks, and dedicated 10G NICs will all increase both the reliability of DRBD and the responsiveness of Private Chef.

Failover and Recovery

When the Primary server in the cluster fails, the VRRP heartbeat will stop. At this point the Backup will begin transitioning to the Primary state, which involves:

#. Assigning the Virtual IP Address, and sending a proxy-arp.
#. Attempting to take-over as the Primary for the DRBD device.
#. Starting all of the back-end services.

Note that the first step is transitioning the Virtual IP Address, which means traffic will be flowing to the Backup while it transitions to Primary.

Graceful Transitions

The keepalived service manages the VRRP and cluster transitions. It should be running on both the Primary and Backup servers. To transition from the Primary to the Backup, simply run the following on the Primary:

.. code-block:: bash

   $ private-chef-ctl keepalived stop

This will cause the current primary to:

#. Remove the Virtual IP Address.
#. Stop the services.
#. Unmount the DRBD device.
#. Becoming secondary for the DRBD device.

Meanwhile, the backup will be undergoing the same steps as listed above.


DRBD

Split Brains (yum)

“Split brain” is a concept of clustered computing systems in which the cluster loses its heartbeat communication channel and becomes two unconnected pieces. Recovery from a split-brain is a complex issue and different clustering software packages use different methods.

Failures happen, so completely preventing split-brain is not an absolute possibility. However, it is possible to alleviate some of the issues that crop up in split-brain scenarios by maxing out the heartbeat network bandwidth and optimizing transfer protocols.

DRBD is a shared-nothing system; data is replicated between hosts over a dedicated network link rather than stored on a central NAS or SAN that all hosts connect to. The most critical issue in HA storage is loss or corruption of data. Maximizing the amount of data that can be passed over the wire while all systems are up and running correctly minimizes the chance that something will be lost or unrecoverable if a host goes down.

At any given time, only one drbd host has userland access to the data; this host is referred to as the “Primary”. The other host runs the drbd daemon but cannot mount the storage into the filesystem. It receives information from the Primary and replicates disk actions on its local copy of the storage, but the partition looks like it doesn’t have a filesystem to the “mount” command.

DRBD’s approach to split-brain situations is to degrade all partners still alive to “Secondary” status and wait for manual intervention. This is called “auto-fencing”, with a goal of minimizing the potential for damage to your data. When you lose one of the partners in your HA pair, a bit of manual intervention is required to ensure that the disks aren’t in a bad state and can be brought back up. The scenarios are discussed below, as well as suggestions for diagnosing and recovering from each scenario.

Split-brain Handlers

DRBD’s configuration allows for custom handlers when a split-brain event happens. The basic handler sends a notification email to a configurable email address so the issue can be investigated.

Private Chef’s drbd.conf file specifies other built-in actions that will be taken in certain fault scenarios:

.. code-block:: bash

   after-sb-0pri discard-younger-primary;
   after-sb-1pri discard-secondary;
   after-sb-2pri call-pri-lost-after-sb;

What these mean:

* after-sb-0pri: split-brain has been detected, and neither node is Primary. The action “discard-younger-primary” will roll back changes made on the last host to have been Primary.
* after-sb-1pri: split-brain has been detected, and only one node thought it was Primary when the split-brain happened. In this configuration, “discard-secondary” will continue operations on the Primary and assume the Secondary was lost.
* after-sb-2pri: split-brain has been detected, and at the time both nodes thought they were Primary. In this instance, “call-pri-lost-after-sb” will try to apply the “discard-younger-primary” from the 0pri configuration to determine which host should be Primary. The other host takes action to become Secondary.

Assumptions

* Back-end processes running on two hosts BE1 and BE2
* Back-end is using keepalived and a dedicated network interface for heartbeat
* Back-end is using drbd for file redundancy
* BE1 is the current drbd “Primary” and the Private Chef “master”
* BE2 is the current drbd “Secondary” and the Private Chef “backup”

When both nodes are up and behaving as expected, the contents of /proc/drbd on the Primary will look like this:

.. code-block:: bash

   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 28753f559ab51b549d16bcf487fe625d5919c49c build by root@localhost.localdomain, 2012-02-06 12:59:36
 0: cs:Connected ro:Primary/Secondary ds:UpToDate/UpToDate C r-----
       ns:4091788 nr:64 dw:112 dr:4092817 al:3 bm:252 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:0

On the Secondary, the status will look similar to this:

.. code-block:: bash

   version: 8.4.1 (api:1/proto:86-100)
   GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by dag@Build64R6, 2011-12-21 06:08:50
 0: cs:Connected ro:Secondary/Primary ds:UpToDate/UpToDate C r-----
       ns:0 nr:48 dw:48 dr:0 al:0 bm:2 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:0

More information about the fields in this file is available at the drbd.org website: http://www.drbd.org/users-guide/ch-admin.html . On each host, its own status is reported first, then the status of its remote partner.



Failure Scenarios

The following four common scenarios are discussed:

#. BE2 fails gracefully (all data is synced)
#. BE2 hard fails badly (unsynced data)
#. BE1 fails gracefully (all data is synced)
#. BE1 hard fails badly (unsynced data)
#. Both hosts are up as Secondary, and Private Chef is unhappy


Scenarios 1 and 2

When the acting backup server fails, drbd on the master will continue to function in Primary mode, whether the drbd on the Secondary was shutdown gracefully or became unavailable unexpectedly. Verify this by running drbdadm role pc0 on the primary:

.. code-block:: bash

   [root@be1 opscode]# drbdadm role pc0
   Primary/Unknown
   [root@be1 opscode]#

You can see the full status by running cat /proc/drbd

.. code-block:: bash

   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 28753f559ab51b549d16bcf487fe625d5919c49c build by    root@localhost.localdomain, 2012-02-06 12:59:36
 0: cs:WFConnection ro:Primary/Unknown ds:UpToDate/DUnknown C r-----
       ns:672 nr:0 dw:24 dr:1697 al:2 bm:0 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:130760

The disk partition is still mounted into the filesystem and can be used as normal.

When the secondary becomes available again, two things may happen. If the status of the Secondary reports “Inconsistent” or “UpToDate” without manual intervention, all is well. If it remains “DUnknown”, drbd on the Secondary can be manually restarted and it will start to sync. The “DUnknown” status is the report that drbd sees no network connection to its partner.

The last field in the /prod/drbd file, “oos” reports how far the Primary is “out of sync” with its partner. If the Secondary is down and there are a lot of writes on the Primary, this number will increase. For example:

.. code-block:: bash

   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 28753f559ab51b549d16bcf487fe625d5919c49c build by root@localhost.localdomain, 2012-02-06 12:59:36
    0: cs:WFConnection ro:Primary/Unknown ds:UpToDate/DUnknown C r-----
        ns:5205048 nr:64 dw:1466728 dr:4180125 al:354 bm:261 lo:1667 pe:0 ua:0 ap:1665 ep:1 wo:b oos:361540

When the disks return to a synced state, that field will return to 0. While the Secondary is syncing, you’ll see a status about the syncing process on both hosts:

Secondary syncing:

.. code-block:: bash

   GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by dag@Build64R6, 2011-12-21 06:08:50
    0: cs:SyncTarget ro:Secondary/Primary ds:Inconsistent/UpToDate C r-----
       ns:0 nr:1263008 dw:1257888 dr:0 al:0 bm:60 lo:6 pe:8 ua:5 ap:0 ep:1 wo:f oos:1670512
           [======>.............] sync'ed: 36.3% (1670512/2613068)K
           finish: 0:00:47 speed: 35,152 (18,124) want: 44,520 K/sec

Primary Syncing:

.. code-block:: bash

   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 28753f559ab51b549d16bcf487fe625d5919c49c build by root@localhost.localdomain, 2012-02-06 12:59:36
    0: cs:SyncSource ro:Primary/Secondary ds:UpToDate/Inconsistent C r-----
       ns:7259268 nr:64 dw:4279364 dr:5721317 al:949 bm:360 lo:5 pe:0 ua:5 ap:0 ep:1 wo:b oos:1121600
           [==========>.........] sync'ed: 57.3% (1121600/2613068)K
           finish: 0:00:32 speed: 34,328 (21,304) K/sec
Eventually the hosts will quiesce and report “ds:UpToDate/UpToDate”. Depending on how long the Secondary was down, how much data was written to the Primary in the interim, and the speed of the shared network, this process could be nearly instantaneous, or could take several minutes. Your Private Chef processes should not need to be manipulated in any way during this recovery.

If the Secondary host is lost completely, a new host can be installed in its place, the device built, and drbd started. The new host will pair with the existing Primary, sync data, and be ready to take over if necessary.


Scenario 3

Trouble starts when the drbd Primary is the host that becomes unavailable. The drbd process on the Secondary makes no assumptions about whether or not it should automatically take over, based on the split-brain configurations in the drbd.conf file.

Basically, what this means is that when the Primary becomes unavailable to the Secondary without an explicit takeover being initiated, the Secondary will assume that it itself is the wrong, split-brained host, and is the one unconnected and incorrect. It will take no automatic action.

The status of the secondary looks like this:

.. code-block:: bash

   version: 8.4.1 (api:1/proto:86-100)
   GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by dag@Build64R6, 2011-12-21 06:08:50
    0: cs:WFConnection ro:Secondary/Unknown ds:UpToDate/DUnknown C r-----
       ns:0 nr:3505480 dw:4938128 dr:0 al:0 bm:290 lo:0 pe:0 ua:0 ap:0 ep:1 wo:f oos:0

The “ds:UpToDate/Unknown” is important; it tells you that the Secondary has all the data that was on the Primary and won’t lose anything if it is promoted.

If you have verified that the Primary host is going to be down for a while, you can promote the Secondary to Primary:

.. code-block:: bash

   $ drbdadm primary pc0

And the status will change:

.. code-block:: bash

   version: 8.4.1 (api:1/proto:86-100)
   GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by dag@Build64R6, 2011-12-21 06:08:50
    0: cs:WFConnection ro:Primary/Unknown ds:UpToDate/DUnknown C r-----
       ns:0 nr:3505480 dw:4938128 dr:672 al:0 bm:290 lo:0 pe:0 ua:0 ap:0 ep:1 wo:f oos:0

Notice that ro is now “ro:Primary/Unknown”. You can now recover Private Chef with

.. code-block:: bash

   $ private-chef-ctl master-recover

This will start up the configured services and Private Chef will be master on this host.

If you are able to bring the original Primary back online, the cluster management script run by keepalived will try to do a drbd takeover, based on that host’s original Primary/Private Chef Master status. The first thing it will do is attempt to promote itself to drbd Primary, which will fail if the disk has been written to at all while this host was down, and keepalived will be unable to transition back to the original master. This leaves the HA pair in a good state, with the BE2 box as the drbd Primary/Private Chef Master.

drbd on BE1 will sync to BE2 and become the clean Secondary.


Scenario 4

So far, the scenarios we have looked at have not created any data loss. When the hosts in the HA pair are synced, either can be lost and the data will be safe.

If you get to a situation in which the Primary host, BE1, is lost and unrecoverable but the last status of the drbd pair was reporting that the Secondary node was in an “Inconsistent” state, you are going to lose some data. The drbd status on the remaining host, BE2, looks like this:

.. code-block:: bash

   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 28753f559ab51b549d16bcf487fe625d5919c49c build by root@localhost.localdomain, 2012-02-06 12:59:36
   0: cs:WFConnection ro:Secondary/Unknown ds:Inconsistent/DUnknown C r-----
      ns:0 nr:210572 dw:210572 dr:0 al:0 bm:13 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:40552

Since you’re practicing good source code management with your cookbooks and other files in your Chef repo, you can re-upload any missing bits when you’ve got a working cluster again. You may find that newly created users or organizations will need to be recreated. Other actions such as chef-client runs and uploads will fail while the cluster is in an Inconsistent state, but will be fine once you’ve fixed the cluster.

When BE1 has been lost while BE2 is Inconsistent, and you aren’t anticipating being able to bring it back online, the best thing to do is to provision another host to become the new Private Chef cluster partner for BE2, and build it out. If the new host has a new IP address different from BE1, change the configs on BE2 and reconfigure.

Private Chef will be freaking out a bit, so turn off the daemons for now with private-chef-ctl stop.

Let’s call the new host BEA. When you have the drbd devices on BEA completed, you’ll want to bring up drbd and get it talking to BE2. BE2 won’t want to be the Primary; it will be waiting for its old Primary to return. Start up drbd on BEA and verify that it is listening on the correct port and the status in /proc/drbd is reporting that the host is up but “WFConnect”: waiting for connection.

By the time you get the new BEA node up, BE2 may have taken itself into Standalone mode, meaning it is no longer listening on the network port. Run two commands to get BE2 to connect to BEA:

.. code-block:: bash

   $ drbdadm primary --force pc0
   $ drbdadm connect pc0

You should then see BEA syncing itself from BE2. BE2 will forget all about the data it was missing from the now-gone BE1, and you can begin the process of bringing Private Chef back online.

Running a fast network between the BE1 and BE2 hosts, and keeping it full throttle for drbd transfers, will go a long way to mitigating the damage done in the event of a loss of the Primary from an unsynced cluster.


Scenario 5

Sometimes drbd hedges its bets, and puts both nodes in a pair into Secondary mode. When this happens, you can look at the contents of /proc/drbd on both hosts and see if either of them is showing out of sync. If they are both “oos:0”, just pick one and promote it to Primary with the above drbdadm primary pc0 command. If one or both of the hosts is out of sync, choose the one with the lower amount of oos and promote it to Primary.

If the chosen node won’t promote, run the following commands on the other host to reset its disk state:

.. code-block:: bash

   $ drbdadm wipe-md pc0
   $ drbdadm create-md pc0

That will tell drbd to abandon what is on the node and start over, and should allow it to sync with the Primary.


More Info
More information about DRBD is available from the DRBD website, http://www.drbd.org.


