.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

=====================================================
Firewalls and Ports
=====================================================

The ports that should be open depend on how the |chef server oec| is deployed---standalone, high availability, front and back end servers. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary.

Standalone
-----------------------------------------------------
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

Front End
-----------------------------------------------------
For front end servers in an |chef server oec| installation:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|

Back End
-----------------------------------------------------
For back end servers in an |chef server oec| installation:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|
   * - 9463
     - **oc_bifrost**
   * - 9671
     - |service nginx|
   * - 9680
     - |service nginx|
   * - 9685
     - |service nginx|
   * - 9683
     - |service nginx|
   * - 5984
     - |service couchdb|
   * - 8983
     - |service solr|
   * - 5432
     - |service postgresql|
   * - 5672
     - |service rabbitmq|
   * - 16379
     - |service redis_lb|
   * - 4321
     - |service bookshelf|
   * - 7788-7799
     - |drbd|
	   
	   .. note:: This port range must be open between all back end servers.
   * - 8000
     - |service erchef|