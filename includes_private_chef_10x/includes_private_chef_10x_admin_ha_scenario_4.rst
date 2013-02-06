.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

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