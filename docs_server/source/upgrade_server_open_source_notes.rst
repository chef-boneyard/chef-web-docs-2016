=====================================================
Notes for |chef server osc| Upgrades 
=====================================================

The following sections contain more information about the upgrade process from |chef server osc| to |chef server| version 12, including steps for a manual upgrade. Please consult with |company_name| support about any of these situations.

Background
=====================================================
The following assumptions are made about all upgrades from |chef server osc| version 11.0.0 (or higher) to |chef server| version 12.

* An organization must be created. Add the organization name as the vaue for the ``default_orgname`` setting in the ``chef-server.rb`` file. This will ensure that API requests made to the server prior to the upgrade process can still be made after.

Standalone >> Standalone
-----------------------------------------------------
The only supported upgrade path for a |chef server osc| server to |chef server| version 12 is from a standalone configuration to a standalone configuration.

Backup Server Data
-----------------------------------------------------
Like any migration or upgrade, it's strongly recommended to back up your data before doing any of the migration or upgrade steps. While we don't anticipate any issues with the upgrade process itself, it's better to be safe.

Organization Name
-----------------------------------------------------
The |chef server osc| server does not have the concept of organizations. The |chef server| version 12 server will require an organization to be created. 

After an upgrade, the organization is an endpoint in the |api chef server|. The |api chef server| used by the |chef server osc| server does not contain this endpoint. Needless to say, API requests made to the |chef server| by the |chef client|, |knife|, and so on will fail until the ``/organizations/ORG_NAME`` endpoint isn't defined.

To resolve this API request issue, add the following setting to the |chef server rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``default_orgname``
     - The |api chef server| used by the |chef server osc| server does not have an ``/organizations/ORG_NAME`` endpoint. Use this setting to ensure that migrated |chef server osc| servers are able to connect to the |api chef server|. This value should be the same as the name of the organization that was created during the upgrade from |chef server osc| version 11 to |chef server| version 12, which means it will be identical to the ``ORG_NAME`` part of the ``/organizations`` endpoint in |chef server| version 12.


Manual Upgrades
=====================================================
placeholder



Subcommand Reference
-----------------------------------------------------
The following subcommands are used **only** during a manual upgrade and **only** when upgrading from the |chef server osc| server to the |chef server| version 12.

Transform Data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_data_transform.rst

**Options**

.. note:: Options for the ``chef12-upgrade-data-transform`` subcommand may only be used when upgrading from |chef server osc| 11 to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_data_transform_options.rst

Download Data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_download.rst

**Options**

.. note:: Options for the ``chef12-upgrade-download`` subcommand may only be used when upgrading from |chef server osc| 11 to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_download_options.rst

Upload Data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_upload.rst

**Options**

.. note:: Options for the ``chef12-upgrade-upload`` subcommand may only be used when upgrading from |chef server osc| 11 to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_upload_options.rst