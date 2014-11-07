.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To configure replication from a new master, first make sure all replicas are up-to-date from the master, then stop the original master |chef server|, then configure the new master |chef server|, then configure each replica |chef server|. This may be necessary for DR/BC scenarios. 

Note that |chef replication| does not yet support a complete re-synchronization from master to replica, so if the original master had changes that did not propagate to all replicas, then you may have inconsistent policies across your |chef servers|.

#. On the new master |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl stop

#. On the new master |chef server|, create the |chef_sync rb| file in the ``/etc/chef-sync/`` directory, and then add the following setting:

   .. code-block:: ruby
      
      role :master

#. On the new master |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. On the new master |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. On the new master |chef server|, run the following command for each source organization (SOURCE_ORG_NAME)

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org SOURCE_ORG_NAME

#. For each replica |chef server|, move the ``/etc/chef-sync/ec_sync_user.pem`` file from the new master |chef server| to the ``/etc/chef-sync`` directory on the replica. (This file is created automatically on the master |chef server|.)

#. For each replica |chef server|, create the |chef_sync rb| file in the ``/etc/chef-sync/`` directory, and then add the following setting:

   .. code-block:: ruby
      
      role :replica
      master "https://FQDN_OF_NEW_MASTER"

#. For each replica |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. For each replica |chef server|, run the following command:

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org DEST_ORG_NAME

#. For each replica |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure
