.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

=====================================================
Firewalls and Ports
=====================================================

The ports that should be open depend on how the |chef server oec| is deployed---standalone, high availability, front and back end servers. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary.

Back End
=====================================================
For back end servers in an |chef server oec| installation:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 5984
     - |service couchdb|
     - yes
   * - 8983
     - |service solr|
     - yes
   * - 5432
     - |service postgresql|
     - yes
   * - 5672
     - |service rabbitmq|
     - yes
   * - 16379
     - |service redis_lb|
     - yes
   * - 4321
     - |service bookshelf|
     - yes
   * - 4369
     - |service orgcreator|
     - no
   * - 7788-7799
     - |drbd| This port range must be open between all back end servers.
     - no

.. include:: ../../release_11-x_master/server_firewalls_and_ports_loopback.rst
