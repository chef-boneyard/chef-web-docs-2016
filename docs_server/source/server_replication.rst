.. THIS PAGE IS IDENTICAL TO docs.getchef.com/server_replication.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Replication
=====================================================

|chef replication| provides a way to asynchronously distribute cookbook, environment, role, and data bag data from a single, primary |chef server| to one (or more) replicas of that |chef server|.

A daemon named |service ecsyncd| runs on each of the replica instances of the |chef server| and periodically polls the primary |chef server| via the ``updated_since`` endpoint in the |api chef server|. The |service ecsyncd| daemon requests a list of objects that have been updated since the last successful synchronization time. If there are updates, the |service ecsyncd| daemon then pulls down the updated data from the primary |chef server| to the replica. 

The |chef sync ctl| command line tool is used to set up and maintain synchronization between one (or more) replica instances of the |chef server| and the primary |chef server|. 

Replication is configured on a per-organization and also a per-replica basis. Each organization must be configured to synchronize with each replica instance. Each organization may be configured to synchronize with all, some, or none of the available replica instances. 

For example, a single primary |chef server| and a single replica:

.. image:: ../../images/chef_server_replication.png
 
and for example, a single primary |chef server| and multiple replicas:

.. image:: ../../images/chef_server_replication_many.png

.. note:: |chef replication| requires |chef server| version 12.

|chef replication| should not be used for:

* Disaster recovery or backup/restore processes. The replication process is read-only and cannot be changed to read-write
* Synchronizing a replica instance with another replica instance
* Node re-registration. A node may be associated only with a single |chef server|

Configure Replication
=====================================================
The following 


Install chef-sync
-----------------------------------------------------
Install the components to run both the master and replica services. On every machine in the |chef server| configuration, do the following:

#. Install the ``chef-sync`` package.
#. Run ``chef-sync-ctl reconfigure``.
#. Run ``chef-server-ctl reconfigure``.

This will install the ``chef-sync`` components on the machine. The configuration file for ``chef-sync`` is located at ``/etc/chef-sync/chef-sync.rb``.

Configure the Master
-----------------------------------------------------
In the ``chef-sync.rb`` file, add the following setting:

.. code-block:: ruby

   role :master

Configure a Replica
-----------------------------------------------------
In the ``chef-sync.rb`` file, add the following settings:

.. code-block:: ruby

   role :replica
   master "https://FQDN_OF_MASTER"

Synchronize an Organization
-----------------------------------------------------
The synchronization daemon on the replica |chef server| will sychronize from a source organization on the master |chef server|. To configure synchronization for an organization, do the following:

#. In the ``chef-sync.rb`` file on the replica |chef server|, add the following settings:

   .. code-block:: ruby
      
	  organizations [
                      {
                        :destination => "DEST_ORG_NAME",
                        :source => "SOURCE_ORG_NAME"
                      }
                    ]
   
   where ``DEST_ORG_NAME`` is an organization on the replica |chef server| and ``SOURCE_ORG_NAME`` is an organization on the master |chef server|. Both of these organizations must already exist.

#. On the master |chef server|, run the following command:

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org SOURCE_ORG_NAME

#. On the replica |chef server|, run the following command:

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org DEST_ORG_NAME

   and then:
   
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. Confirm that ``chef-sync`` is running on the replica |chef server|:

   .. code-block:: bash
      
      $ chef-sync-ctl sync-status
	  
#. If any errors are received during this process, run the following:

   .. code-block:: bash
      
      $ chef-sync-ctl manager-log


|chef sync ctl| (executable)
=====================================================

.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync.rst

manager-log
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_manager_log.rst

prepare-org
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_prepare_org.rst

sync-log
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_log.rst

sync-start
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_start.rst

sync-status
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_status.rst
 
sync-stop
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_stop.rst

unsynced-objects
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_sync/includes_ctl_chef_sync_unsynced_objects.rst


|chef_sync rb|
==========================================================================
The |chef_sync rb| file is the default configuration file used by |chef sync|.

Settings
-----------------------------------------------------
This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1
   * - Setting
     - Description
   * - ``bootstrap``
     - Indicates whether an attempt to bootstrap the |chef server| is made. Generally only enabled on systems that have bootstrap enabled via a ``server`` entry. Default value: ``true``.
   * - ``chef_base_path``
     - Default value: ``"/opt/opscode"``.
   * - ``ec_sync_client['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/chef-sync/ec_sync_client"``.
   * - ``ec_sync_client['enable']``
     - |enable service| Default value: ``true``.
   * - ``ec_sync_client['ha']``
     - |use ha| Default value: ``false``.
   * - ``ec_sync_client['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/chef-sync/client"``.
   * - ``ec_sync_client['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``ec_sync_client['master']``
     - Default value: ``'https://127.0.0.1'``.
   * - ``ec_sync_client['organizations']``
     - Default value: ``[]``.
   * - ``ec_sync_client['replica']``
     - Default value: ``'https://127.0.0.1'``.
   * - ``ec_sync_client['socket_path']``
     - Default value: ``"/var/opt/chef-sync/ec_sync_client/ec_sync.sock"``.
   * - ``ec_sync_client['sync_key']``
     - Default value: ``'/etc/chef-sync/ec_sync_user.pem'``.
   * - ``ec_sync_client['sync_user']``
     - Default value: ``'ec_sync_user'``.
   * - ``ec_sync_server['auth_skew']``
     - Default value: ``'900'``.
   * - ``ec_sync_server['db_pool_size']``
     - |db_pool_size| Default value: ``10``.
   * - ``ec_sync_server['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/chef-sync/ec_sync_server"``.
   * - ``ec_sync_server['enable']``
     - |enable service| Default value: ``true``.
   * - ``ec_sync_server['ha']``
     - |use ha| Default value: ``false``.
   * - ``ec_sync_server['listen']``
     - |ip_address service| Default value: ``'127.0.0.1'``.
   * - ``ec_sync_server['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/chef-sync/server"``.
   * - ``ec_sync_server['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``ec_sync_server['port']``
     - |port service| Default value: ``9996``.
   * - ``ec_sync_server['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
   * - ``install_path']``
     - Default value: ``"/opt/chef-sync"``.
   * - ``master``
     - Use to specify the root URL for the master |chef server|.
   * - ``name``
     - Default value: ``'sync'``.
   * - ``organization``
     - An array that specifies the source and destination organization pairs for synchronization.
   * - ``replica``
     - Use to specify the root URL for the replica |chef server|.
   * - ``role``
     - Use to specify if ``chef-sync`` is installed as a master |chef server|, a replica |chef server|, or both. Possible values: ``:master``, ``:master_and_replica``, ``:replica``. Default value: ``:replica``.
   * - ``user['home']``
     - The home directory for the user under which |chef server| services run. Default value: ``/opt/opscode/embedded``.
   * - ``user['shell']``
     - The shell for the user under which |chef server| services run. Default value: ``/bin/sh``.
   * - ``user['username']``
     - The user name under which |chef server| services run. Default value: ``opscode``.






|api chef server| Endpoints
=====================================================
The following |api chef server| endpoints support |chef replication|. 

/updated_since
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since_get.rst