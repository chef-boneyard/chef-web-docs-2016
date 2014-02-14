=====================================================
Migrate to Hosted |chef server oec|
=====================================================

.. include:: ../../includes_chef/includes_chef_open_source.rst

.. include:: ../../includes_chef/includes_chef_hosted.rst

.. include:: ../../includes_migrate/includes_migrate_to_hosted.rst

The steps for migrating to hosted |chef server oec| from an instance of the open source |chef server| are:

#. In hosted |chef server oec| create an organization
#. For each node, update the ``chef_server_url`` setting in the |client rb| files so that it points to the URL for hosted |chef server oec|
#. Run ``knife download`` from the |chef server osc| server
#. Point the |knife rb| file at the hosted |chef server oec| organization
#. Run ``knife upload`` to hosted |chef server oec|

Create an Organization
=====================================================
An organization is the top-level entity in hosted |chef server oec|.

.. include:: ../../step_manage_webui/step_manage_webui_admin_organization_add.rst

Update the Server URL
=====================================================
On each node, the ``chef_server_url`` setting in the |client rb| file needs to be updated so that its value is the URL for the hosted |chef server oec|.

Run ``knife download``
=====================================================
To download the data (including run-lists and node attributes) that is being used with the open source |chef server|, it must be exported from the open source |chef server| so that it can be uploaded to the hosted |chef server oec| server. Use the ``knife download`` subcommand to perform this task.

.. include:: ../../step_knife/step_knife_download_repository.rst

.. include:: ../../step_knife/step_knife_download_directory.rst

Update the Organization
=====================================================
On each workstation (or at least the workstation from which the migration is being done), the ``chef_server_url`` setting in the |knife rb| file needs to be updated so that its value is the URL for the hosted |chef server oec|.

Run ``knife upload``
=====================================================
To restore the data (including run-lists and node attributes) that was being used with the open source |chef server| server, it must be uploaded to the hosted |chef server oec| server. Use the ``knife upload`` subcommand to perform this task.

.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory.rst

If only data for specific data bags, environments, nodes, and roles should be uploaded, use the ``from file`` arguments for the ``knife data bag``, ``knife environment``, ``knife node``, and ``knife role`` sub-commands. The path used for the ``from file`` argument must be the path to backed-up data bag, environment, node, or role. 

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.