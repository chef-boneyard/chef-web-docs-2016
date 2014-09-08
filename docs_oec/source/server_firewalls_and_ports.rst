.. THIS PAGE IS LOCATED AT THE /enterprise/ PATH.

=====================================================
Firewalls and Ports
=====================================================

The ports that should be open depend on how the |chef server| is deployed---standalone, high availability, front- and back-end servers. All of the ports used by the |chef server| are TCP ports. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary.

All services must be listening on the appropriate ports. Most monitoring systems provide a means of testing whether a given port is accepting connections and service-specific tools may also be available. In addition, the generic system tool |telnet| can also be used to initiate the connection:

.. code-block:: bash

   $ telnet HOST_NAME PORT


Standalone
-----------------------------------------------------
For a standalone |chef server| installation, and if host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open:

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
For front-end servers in an |chef server| installation:

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
For back-end servers in an |chef server| installation:

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
