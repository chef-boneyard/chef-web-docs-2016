.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

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