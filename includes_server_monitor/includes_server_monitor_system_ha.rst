.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

All components of computer systems fail, and ethernet networks, while being generally very robust, are no exception.
Chef Server DRBD HA depends on a functioning network to begin and maintain replication between the two backend
members of a Chef Server HA cluster.

To become aware of failure at the earliest opportunity, the /proc/drbd psuedo file should be monitored for signs
that the cluster replication has stopped or is falling behind:

A healthy output looks like this

.. code-block:: bash

   $ cat /proc/drbd
   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 09b6d528b3b3de50462cd7831c0a3791abc665c3 build by linbit@buildsystem.linbit, 2011-10-12 09:07:35
    0: cs:Connected ro:Secondary/Secondary ds:UpToDate/UpToDate C r-----
       ns:0 nr:0 dw:0 dr:656 al:0 bm:0 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:0

An unhealthy connection can look like this from the perspective of the initial Primary, where we have lost communication with the Secondary and oos, Out Of Sync is non-zero and increasing. This is not fatal, but represents a degraded mode for the cluster. It means we are no longer in sync to within a few milliseconds, but are building up a queue of unwritten writes on the originating side that must be eventually synchronized to the Secondary when the network connection once again becomes usable.

.. code-block:: bash

   $ cat /proc/drbd
   version: 8.4.0 (api:1/proto:86-100)
   GIT-hash: 09b6d528b3b3de50462cd7831c0a3791abc665c3 build by linbit@buildsystem.linbit, 2011-10-12 09:07:35
    0: cs:WFConnection ro:Primary/Secondary ds:UpToDate/Unknown C r---
       ns:0 nr:0 dw:0 dr:0 al:0 bm:0 lo:0 pe:0 ua:0 ap:0 ep:1 wo:b oos:54192
