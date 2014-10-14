=====================================================
Release Notes: |chef server_title| 12
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

.. warning:: This topic is about an upcoming official release of the Chef server. (These features have been made available as release candidates previously.)

What's New
=====================================================
The following items are new for |chef server| 12:

* **CouchDB removed** |couch db| is no longer a component of the |chef server|. All data is migrated to |postgresql|.
* **Solr has been upgraded to Solr 4** The search capabilities of the |chef server| now use |apache solr| 4.
* **High availability using Amazon Web Services** |amazon aws| is a supported high availability configuration option for the |chef server|. Machines are stored as |amazon ebs| volumes. A passive node monitors the availabilty of the active node, and will take over if required.
* **Chef server replication** |chef replication| provides a way to asynchronously distribute cookbook, environment, role, and data bag data from a single, primary |chef server| to one (or more) replicas of that |chef server|.
* **New chef-server-ctl command line tool** The |chef server ctl| command line tool is an update of the |private chef ctl| command line tool, with a new syntax for the new |chef server|.
* **New command for installing features of the |chef server|** The ``install`` subcommand may be used to install |chef manage|, |push jobs|, |chef replication|, and |reporting|.
* **New commands for managing users** New subcommands for the |chef server ctl| command line tool: ``user-create``, ``user-delete``, ``user-edit``, ``user-list``, and ``user-show``.
* **New commands for managing organizations** New subcommands for the |chef server ctl| command line tool: ``org-associate``, ``org-create``, ``org-delete``, ``org-disassociate``, ``org-list``, and ``org-show``.
* **Upgrades from Open Source Chef and Enterprise Chef servers to Chef 12 server** Upgrades to |chef server| 12 are supported from |chef server oec| 11 high availability and standalone configurations and |chef server osc| 11 standalone configurations. View the topic :doc:`Upgrade to Chef Server 12 </upgrade_server>` for more information about these processes. 
* **Services removed** The following services have been removed from the |chef server|: ``opscode-account``, ``opscode-certificate``, ``oc_authz_migrator``, ``opscode-org-creator``, ``orgmapper``, and ``opscode-webui``.

HA using AWS
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_aws.rst

View the topic :doc:`High Availability: AWS </install_server_ha_aws>` for more information about how to set up the |chef server| for high availability in |amazon aws|.

|chef replication_title|
-----------------------------------------------------
.. include:: ../../includes_server_replication/includes_server_replication.rst

**Scenarios**

.. include:: ../../includes_server_replication/includes_server_replication_scenarios.rst

**How Replication Works**

.. include:: ../../includes_server_replication/includes_server_replication_how_it_works.rst

View the topic :doc:`Chef Replication </server_replication>` for more information about how to set up the |chef server| for replication.

|chef server ctl|
-----------------------------------------------------
The command line tool for the |chef server| has been renamed from |private chef ctl| to |chef server ctl|. The same subcommands are available, but with a new syntax:

.. code-block:: bash

   $ chef-server-ctl command

In addition, two new subcommand groupings have been added for managing users and managing organizations.

``install`` Command
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_options.rst

**Use Downloads**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

**Use Local Packages**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst

``user-*`` Commands
-----------------------------------------------------
The following subcommands can be used to manage users:

user-create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create_options.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl user-create john_smith John Smith john_smith@example.com insecure-passord

.. code-block:: bash

   $ chef-server-ctl user-create jane_doe Jane Doe jane_doe@example.com PaSSword -f /tmp/jane_doe.key


.. code-block:: bash

   $ chef-server-ctl user-create waldendude Henry David Thoreau waldendude@example.com excursions

user-delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_delete.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_delete_syntax.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl user-delete john_smith


.. code-block:: bash

   $ chef-server-ctl user-delete jane_doe

user-edit
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_edit.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_edit_syntax.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl user-edit john_smith


.. code-block:: bash

   $ chef-server-ctl user-edit jane_doe

user-list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list_options.rst

user-show
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show_options.rst

``org-*`` Commands
-----------------------------------------------------
The following subcommands can be used to manage organizations:

org-associate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_associate.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_associate_syntax.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl org-associate prod john_smith


.. code-block:: bash

   $ chef-server-ctl org-associate preprod testmaster

org-create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create_options.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl org-create prod Production


.. code-block:: bash

   $ chef-server-ctl org-create staging Staging -a chef-admin


.. code-block:: bash

   $ chef-server-ctl org-create dev Development -f /tmp/id-dev.key

org-delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_delete.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_delete_syntax.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl org-delete infra-testing-20140909


.. code-block:: bash
      
   $ chef-server-ctl org-delete pedant-testing-org

org-disassociate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_disassociate.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_disassociate_syntax.rst

**Examples**

.. code-block:: bash

   $ chef-server-ctl org-disassociate prod john_smith


.. code-block:: bash

      $ chef-server-ctl org-disassociate prod testmaster

org-list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list_options.rst

org-show
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_show.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_show_syntax.rst


What's Fixed
=====================================================
For the list of issues that were addressed for this release, please see the changelog on |github|: https://github.com/opscode/opscode-omnibus/blob/master/CHANGELOG.md







