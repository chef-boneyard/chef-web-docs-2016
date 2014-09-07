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
To configure replication of |chef server| data, first install |chef sync|, then configure the master |chef server|, then configure the replica |chef server|, and then start the synchronization process. 

#. To install |chef sync|, run the following on all machines in the |chef server| configuration. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -i chef-sync-<version>.deb

   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh chef-sync-<version>.rpm

#. For each replica |chef server|, move the ``/etc/chef-sync/ec_sync_client.pem`` file from the master |chef server| to the ``/etc/chef-sync`` directory on the replica. (This file is created automatically on the master |chef server|.)

#. Run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. Run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

   |chef sync| is now installed on all machines. The |chef_sync rb| file is located at ``/etc/chef-sync/chef-sync.rb``.

#. Add the following setting to the |chef sync rb| file on the master |chef server|:

   .. code-block:: ruby
      
      role :master

#. Add the following setting to the |chef sync rb| file on each replica |chef server|:

   .. code-block:: ruby
      
      role :replica
      master "https://FQDN_OF_MASTER"

#. The synchronization daemon on the replica |chef server| will sychronize from a source organization on the master |chef server|. To configure synchronization for an organization, do the following:

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
=====================================================
.. include:: ../../includes_config/includes_config_rb_sync.rst

Settings
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_sync_settings.rst



|api chef server| Endpoints
=====================================================
The following |api chef server| endpoint supports |chef replication|. 

/updated_since
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since_get.rst