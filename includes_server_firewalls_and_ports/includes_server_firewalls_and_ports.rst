.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a standalone |chef server oec| installation, and if host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|

For all other installation options ensure that the following ports are open. For front-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|
   * - 9672
     - |service nrpe|

For back-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|
   * - 9671
     - |service nginx|
   * - 9680
     - |service nginx|
   * - 9685
     - |service nginx|
   * - 9683
     - |service nginx|
   * - 9672
     - |service nrpe|
   * - 5984
     - |service couchdb|
   * - 8983
     - |service solr|
   * - 5432
     - |service postgresql|
   * - 5672
     - |service rabbitmq|
   * - 16379
     - |service redis|
   * - 4321
     - |service bookshelf|
   * - 7788-7799
     - |drbd|

Refer to the operating system's manual or site systems administrators for instructions on how to enable this change.
