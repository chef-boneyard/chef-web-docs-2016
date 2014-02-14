=====================================================
Migrate to Hosted |chef server oec|
=====================================================

The steps for migrating to hosted |chef server oec| from an instance of the open source |chef server| are:

#. In hosted |chef server oec| create an organization
#. For each node, update the ``chef_server_url`` setting in the |client rb| files so that it points to the URL for hosted |chef server oec|
#. Create an empty |chef repo|
#. Update ``versioned_cookbooks``
#. Run ``knife download`` from the |chef server osc| server
#. Update ``chef_server_url``
#. Run ``knife upload`` to hosted |chef server oec|

Create an Organization
=====================================================
An organization is the top-level entity in hosted |chef server oec|.

To add an organization:

#. Open |webui|.
#. Click |webui admin|.
#. Click |webui admin_orgs|.
#. Click |webui admin_orgs_create|.
#. In the |webui db_create_org| dialog box, enter the full and short names for the organization:

   .. image:: ../../images/step_manage_webui_admin_organization_add.png

#. Click |webui button_create_organization|.

Update client.rb
=====================================================
On each node, the ``chef_server_url`` setting in the |client rb| file needs to be updated so that its value is the URL for the hosted |chef server oec|.

Update ``versioned_cookbooks``
=====================================================
On the workstation from which the migration is being done, the following settings need to be updated:

* The value for ``versioned_cookbooks`` must be set to ``true``; if this setting is not in the |knife rb| file, add it

Create an empty repository
=====================================================
The migration process should use a new repository that does not contain any |chef server| data. The repository only requires a |knife rb| file in the ``.chef/`` directory:

.. code-block:: bash

   mkdir upgrade
   cd upgrade
   mkdir .chef
   vim .chef/knife.rb

The |knife rb| file should look similar to the following:

.. code-block:: ruby

   # Knife Configuration File for Migrations to Enterprise Chef
   #
   ######################################################################
   # In order to interact with a Chef Server, three configuration
   # settings are *required*, and you must change them.
   #
   # node_name
   # client_key
   # chef_server_url
   #
   
   node_name ""
    
   client_key "/etc/chef/client.pem"
    
   chef_server_url "http://localhost:4000"
   
   
   ######################################################################
   # In order to download all cookbooks and all cookbook versions
   # the following setting is *required*
   
   versioned_cookbooks "true"

Run ``knife download``
=====================================================
To download the data (including run-lists and node attributes) that is being used with the open source |chef server|, it must be exported from the open source |chef server| so that it can be uploaded to the hosted |chef server oec| server. Use the ``knife download`` subcommand to perform this task.

To download the entire |chef repo| from the |chef server|, browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife download /

This command will create subdirectories for clients, cookbooks, data bags, environments, roles, nodes, and users. These can be deleted and modified before uploading to the server.

Update ``chef_server_url``
=====================================================
On the workstation from which the migration is being done, the following settings need to be updated:

* The value for ``chef_server_url`` must be updated for the new hosted |chef server oec| URL

Run ``knife upload``
=====================================================
To restore the data (including run-lists and node attributes) that was being used with the open source |chef server| server, it must be uploaded to the hosted |chef server oec| server. Use the ``knife upload`` subcommand to perform this task.

Browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife upload .

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.