=====================================================
Migrate to |chef hosted| from |chef open server|
=====================================================

.. include:: ../../includes_chef/includes_chef_open_source.rst

.. include:: ../../includes_chef/includes_chef_hosted.rst

.. include:: ../../includes_migrate/includes_migrate_to_hosted.rst

Follow the steps below to migrate from an |chef open server| to |chef hosted|.

System Requirements
=====================================================
|chef hosted| does not have system requirements other than each node that will be configured by |chef| must be able to communicate with the |chef hosted| server and that each workstation that will be used to manage and configure the organization (such as by using |knife| to upload cookbooks) must also be able to communicate with the |chef hosted| server. Both nodes and workstations, once properly configured and registered with the |chef server|, are also referred to as |chef api client|.

Migrate to |chef hosted|
=====================================================
The steps for migrating to |chef hosted| from an instance of |chef open server| are:

#. Backup data from |chef open server| 
#. Choose an organization
#. Choose a repository
#. Verify nodes and API clients
#. Register nodes with |chef hosted|
#. Upload data to |chef hosted|
#. Run the |chef client| on all nodes

See the following sections for more information about each step. 

Backup Data
-----------------------------------------------------
To back up the data (including run-lists and node attributes) that is being used with |chef open server| server, it must be exported from the |chef open server| server so that it can be uploaded to the |chef hosted| server. Use the ``backup_export`` |knife| plugin to perform this task.

Using ``backup_export``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_backup_export_install.rst

Use the ``knife backup export`` sub-command to export all data bags, environments, nodes, and roles that are stored on the |chef server|. These are saved as |json| files within the ``.chef/chef_server_backup`` directory.

.. include:: ../../step_knife_plugin/step_knife_plugin_backup_export_run.rst

Using Knife
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|knife download|

.. include:: ../../step_knife/step_knife_download_repository.rst

.. include:: ../../step_knife/step_knife_download_directory.rst


Choose an organization
-----------------------------------------------------
Sign up for |chef hosted| and create an organization.

.. include:: ../../step_install/step_install_workstation_validation_files_download.rst

Choose a repository
-----------------------------------------------------
The |chef| repository used with |chef hosted| can be the same repository as the one used with |chef open server|. Or, a brand new repository can be created using the data that was exported from the |chef open server| server.

.. include:: ../../step_install/step_install_workstation_chef_directory_move_files.rst

Verify nodes and API clients
-----------------------------------------------------
The new |chef hosted| organization should not have any registered nodes and should have only a single |chef api client|: |chef validator|. The presence of nodes and API clients can be verified using the ``list`` arguments for the ``knife node`` and ``knife client`` sub-commands.

.. include:: ../../step_knife/step_knife_node_list_return_empty.rst

No nodes should be listed.

.. include:: ../../step_knife/step_knife_client_list_return_only_validator.rst

The only client that should be listed is the organization's validator client.

Register nodes with |chef hosted|
-----------------------------------------------------
Each node that will be managed by |chef| must be registered with the |chef hosted| server. A custom migration template can be used with the ``knife bootstrap`` sub-command to populate all of the nodes with the correct configuration file and validation certificate.

The Migration Template
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A migration script is used to register each of the nodes for |chef hosted|. Save the following script as ``.chef/bootstrap/migration.erb`` within the |chef| repository. If the |client rb| file has been modified, this script will also need to be modified.

.. code-block:: bash

   bash -c '
   # removed installation, presumably Chef is installed on existing nodes
   
   rm /etc/chef/client.pem /etc/chef/validation.pem
   
   (
   cat <<'EOP'
   <%= validation_key %>
   EOP
   ) > /tmp/validation.pem
   awk NF /tmp/validation.pem > /etc/chef/validation.pem
   rm /tmp/validation.pem
   
   (
   cat <<'EOP'
   <%= config_content %>
   EOP
   ) > /etc/chef/client.rb
   
   chef-client
   '

Bootstrapping Nodes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_bootstrap_migrate_to_hosted.rst

.. note:: If nodes are running on the |windows| platform, the ``knife bootstrap`` sub-command must be used and the template must be modified for the |windows| platform. Be sure to remove the ``client.pem`` file, typically located at ``c:\chef\client.pem``. This also assumes that the |chef hosted| organization does not have any data for nodes that will run on the |windows| platform and that the run list is empty. (The run-list will be re-populated from backed-up data.) It is important to bootstrap the nodes at this stage before restoring the backup, in order to avoid creating a permissions issue.

Upload Data
-----------------------------------------------------
To restore the data (including run-lists and node attributes) that was being used with |chef open server| server, it must be uploaded to the |chef hosted| server. There are two options: use the ``backup_restore`` |knife| plugin or use the ``knife upload`` sub-command.

Using ``backup_restore``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_backup_restore_install.rst

.. include:: ../../step_knife_plugin/step_knife_plugin_backup_restore_run.rst

Using Knife
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|knife upload|

.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory.rst

If only data for specific data bags, environments, nodes, and roles should be uploaded, use the ``from file`` arguments for the ``knife data bag``, ``knife environment``, ``knife node``, and ``knife role`` sub-commands. The path used for the ``from file`` argument must be the path to backed-up data bag, environment, node, or role. 

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.

Run every |chef client|
-----------------------------------------------------
After all of the nodes are registered with the |chef hosted| server and all of the data has been restored to the |chef hosted| server, the last step is to kick off a |chef| run on each of the nodes. The easiest way to do that is to use the ``knife ssh`` sub-command and issue a ``sudo chef-client`` command to all of the nodes that will be managed by the |chef hosted| server.

.. include:: ../../step_knife/step_knife_ssh_run_chef_client_on_all_nodes.rst

