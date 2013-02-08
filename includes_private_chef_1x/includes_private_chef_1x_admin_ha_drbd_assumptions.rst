.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

* Back-end processes running on two hosts BE1 and BE2
* Back-end is using keepalived and a dedicated network interface for heartbeat
* Back-end is using drbd for file redundancy
* BE1 is the current drbd Primary and the |chef private| master
* BE2 is the current drbd Secondary and the |chef private| backup

When both nodes are up and behaving as expected, the contents of ``/proc/drbd`` on the Primary will look like this:

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

More information about the fields in this file is available at the drbd.org website: http://www.drbd.org/users-guide/ch-admin.html. On each host, its own status is reported first, then the status of its remote partner.
