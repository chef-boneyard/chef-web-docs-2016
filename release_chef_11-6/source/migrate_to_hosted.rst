=====================================================
Migrate to Hosted Chef
=====================================================

.. include:: ../../includes_chef/includes_chef_open_source.rst

.. include:: ../../includes_chef/includes_chef_hosted.rst

.. include:: ../../includes_migrate/includes_migrate_to_hosted.rst

Follow the steps below to migrate from the open source |chef server| to hosted |chef server oec|.

System Requirements
=====================================================
Hosted |chef server oec| does not have system requirements other than each node that will be configured by |chef| must be able to communicate with the hosted |chef server oec| server and that each workstation that will be used to manage and configure the organization (such as by using |knife| to upload cookbooks) must also be able to communicate with the hosted |chef server oec| server. Both nodes and workstations, once properly configured and registered with the |chef server|, are also referred to as |chef api client|.

Migrate to hosted |chef server oec|
=====================================================
The steps for migrating to hosted |chef server oec| from an instance of the open source |chef server| are:

#. Backup data from the open source |chef server|
#. Choose an organization
#. Choose a repository
#. Verify nodes and API clients
#. Register nodes with hosted |chef server oec|
#. Upload data to hosted |chef server oec|
#. Run the |chef client| on all nodes

See the following sections for more information about each step. 

Backup Data
-----------------------------------------------------
To back up the data (including run-lists and node attributes) that is being used with the open source |chef server|, it must be exported from the open source |chef server| so that it can be uploaded to the hosted |chef server oec| server. Use the ``knife download`` subcommand to perform this task.

.. include:: ../../step_knife/step_knife_download_repository.rst

.. include:: ../../step_knife/step_knife_download_directory.rst


Choose an organization
-----------------------------------------------------
Sign up for hosted |chef server oec| and create an organization.

.. include:: ../../step_install/step_install_workstation_validation_files_download.rst

Choose a repository
-----------------------------------------------------
The |chef| repository used with hosted |chef server oec| can be the same repository as the one used with the open source |chef server|. Or, a brand new repository can be created using the data that was exported from the open source |chef server|.

.. include:: ../../step_install/step_install_workstation_chef_directory_move_files.rst

Verify nodes and API clients
-----------------------------------------------------
The new hosted |chef server oec| organization should not have any registered nodes and should have only a single |chef api client|: |chef validator|. The presence of nodes and API clients can be verified using the ``list`` arguments for the ``knife node`` and ``knife client`` sub-commands.

.. include:: ../../step_knife/step_knife_node_list_return_empty.rst

No nodes should be listed.

.. include:: ../../step_knife/step_knife_client_list_return_only_validator.rst

The only client that should be listed is the organization's validator client.

Register nodes with hosted |chef server oec|
-----------------------------------------------------
Each node that will be managed by |chef| must be registered with the hosted |chef server oec| server. A custom migration template can be used with the ``knife bootstrap`` sub-command to populate all of the nodes with the correct configuration file and validation certificate.

The Migration Template
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A migration script is used to register each of the nodes for hosted |chef server oec|. Save the following script as ``.chef/bootstrap/migration.erb`` within the |chef| repository. If the |client rb| file has been modified, this script will also need to be modified.

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

.. note:: If nodes are running on the |windows| platform, the ``knife bootstrap`` sub-command must be used and the template must be modified for the |windows| platform. Be sure to remove the ``client.pem`` file, typically located at ``c:\chef\client.pem``. This also assumes that the hosted |chef server oec| organization does not have any data for nodes that will run on the |windows| platform and that the run list is empty. (The run-list will be re-populated from backed-up data.) It is important to bootstrap the nodes at this stage before restoring the backup, in order to avoid creating a permissions issue.

Upload Data
-----------------------------------------------------
To restore the data (including run-lists and node attributes) that was being used with the open source |chef server| server, it must be uploaded to the hosted |chef server oec| server. Use the ``knife upload`` subcommand to perform this task.

.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory.rst

If only data for specific data bags, environments, nodes, and roles should be uploaded, use the ``from file`` arguments for the ``knife data bag``, ``knife environment``, ``knife node``, and ``knife role`` sub-commands. The path used for the ``from file`` argument must be the path to backed-up data bag, environment, node, or role. 

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.

Run every |chef client|
-----------------------------------------------------
After all of the nodes are registered with the hosted |chef server oec| server and all of the data has been restored to the hosted |chef server oec| server, the last step is to kick off a |chef| run on each of the nodes. The easiest way to do that is to use the ``knife ssh`` sub-command and issue a ``sudo chef-client`` command to all of the nodes that will be managed by the hosted |chef server oec| server.

.. include:: ../../step_knife/step_knife_ssh_run_chef_client_on_all_nodes.rst

