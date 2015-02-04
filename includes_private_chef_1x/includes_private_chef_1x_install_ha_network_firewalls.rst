.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open on each of the front-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 9672
     - nrpe

On the back-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 9671
     - nginx
   * - 9680
     - nginx
   * - 9685
     - nginx
   * - 9683
     - nginx
   * - 9672
     - nrpe
   * - 5984
     - couchdb
   * - 8983
     - opscode-solr
   * - 5432
     - postgresql
   * - 5672
     - rabbitmq
   * - 6379
     - redis
   * - 7788
     - drbd

Refer to the operating system's manual or site systems administrators for instructions on how to enable this change.


