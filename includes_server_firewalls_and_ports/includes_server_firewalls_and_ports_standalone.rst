.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a standalone |chef server| installation, and if host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 80
     - |service nginx|
     - yes
   * - 443
     - |service nginx|
     - yes
   * - 8000
     - |service erchef|
     - no
   * - 9090
     - |service ocid|
     - no
   * - 9463
     - |service bifrost|
     - no
   * - 9680
     - |api chef server| internal LB port
     - no
   * - 9685
     - |service account| internal LB port
     - no
   * - 9683
     - |service bifrost| internal LB port
     - no
   * - 5984
     - |service couchdb|
     - no
   * - 8983
     - |service solr|
     - no
   * - 5432
     - |service postgresql|
     - no
   * - 5672
     - |service rabbitmq|
     - no
   * - 16379
     - |service redis_lb|
     - no
   * - 4321
     - |service bookshelf|
     - no
