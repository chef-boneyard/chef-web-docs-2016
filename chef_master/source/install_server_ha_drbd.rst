.. This page is the Chef 12 server install page, for high availabilty in AWS.

=====================================================
High Availability: DRBD
=====================================================

This topic describes how to set up the |chef server| for high availability using physical machines and |drbd|.

Prerequisites
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_pre.rst

Disk Configuration
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_config_disk.rst

Primary Backend
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_primary.rst

|chef server rb|
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_config_rb.rst

Secondary Backend
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_secondary.rst

Establish Failover
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_establish_failover.rst

Frontend
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_drbd_frontend.rst

Enable Features
=====================================================
Enable additional features of the |chef server|! Run the following commands:

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst

.. note:: .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_manual.rst

Reference
=====================================================
The following sections show an example |chef server rb| file and a list of the ports that are required by the |chef server|.

|chef server rb|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_server_ha_drbd_reference_config.rst

Firewalls
-----------------------------------------------------
All of the ports used by the |chef server| are TCP ports. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary. 

Backend
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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
     - |service bifrost|
   * - 9671
     - |service nginx|
   * - 9680
     - |service nginx|
   * - 9685
     - |service nginx|
   * - 9683
     - |service nginx|
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


Frontend
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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

