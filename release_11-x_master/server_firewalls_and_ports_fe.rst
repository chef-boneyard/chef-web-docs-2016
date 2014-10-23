.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

=====================================================
Firewalls and Ports
=====================================================

The ports that should be open depend on how the |chef server oec| is deployed---standalone, high availability, front and back end servers. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary.

Front End
=====================================================
For front end servers in an |chef server oec| installation:

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
   * - 5140
     - |service certificate|
     - no
   * - 9462
     - |service webui|
     - no
   * - 9090
     - |service ocid|
     - no
   * - 9465
     - |service account|
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

.. include:: ../../release_11-x_master/server_firewalls_and_ports_loopback.rst
