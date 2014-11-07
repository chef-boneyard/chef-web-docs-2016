.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To configure replication of |chef server| data, first install |chef replication| on the master |chef server| and all replica |chef servers|, then configure the master |chef server|, then configure the replica |chef server|, and then start the synchronization process.

#. To install |chef replication|, run the following on all machines in the |chef server| configuration. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -i chef-sync-<version>.deb

   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh chef-sync-<version>.rpm

#. On the master |chef server|, create the |chef_sync rb| file in the ``/etc/chef-sync/`` directory, and then add the following setting:

   .. code-block:: ruby
      
      role :master

#. On the master |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. On the master |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. On the master |chef server|, run the following command:

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org SOURCE_ORG_NAME

#. For each replica |chef server|, move the ``/etc/chef-sync/ec_sync_user.pem`` file from the master |chef server| to the ``/etc/chef-sync`` directory on the replica. (This file is created automatically on the master |chef server|.)

#. For each replica |chef server|, create the |chef_sync rb| file in the ``/etc/chef-sync/`` directory, and then add the following setting:

   .. code-block:: ruby
      
      role :replica
      master "https://FQDN_OF_MASTER"

   and then define the source and destination organizations:

   .. code-block:: ruby
      
      organizations [
                      {
                        :destination => "DEST_ORG_NAME",
                        :source => "SOURCE_ORG_NAME"
                      }
                    ]
   
   where ``DEST_ORG_NAME`` is an organization on the replica |chef server| and ``SOURCE_ORG_NAME`` is an organization on the master |chef server|. Both of these organizations must already exist.

#. For each replica |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-sync-ctl reconfigure

#. For each replica |chef server|, run the following command:

   .. code-block:: bash
      
      $ chef-sync-ctl prepare-org DEST_ORG_NAME

#. For each replica |chef server|, run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure
