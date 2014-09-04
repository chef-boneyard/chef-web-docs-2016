.. THIS PAGE IS IDENTICAL TO docs.getchef.com/server_replication.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Replication
=====================================================

.. 
.. placeholder
.. 
.. |chef replication| provides a way to synchronize replicas of a |chef server| with a single, primary |chef server|.
.. 
.. 
.. This processes uses pull-based synchronization that is initiated by each of the replica instances. 
.. 
.. Replication occurs on a per-organization basis. Each organization on the primary |chef server| must be configured for synchronization with replica instances of the |chef server|.
.. 
.. 
.. .. image:: ../../images/chef_server_replication.png
.. 
.. .. image:: ../../images/chef_server_replication_many.png
.. 
.. 




chef-sync-ctl (executable)
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





|api chef server| Endpoints
=====================================================
The following |api chef server| endpoints support |chef replication|. 

/ORGS/ORG_NAME/updated_since
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_updated_since_get.rst