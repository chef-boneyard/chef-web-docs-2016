=====================================================
Notes for |chef server osc| Upgrades 
=====================================================

The following sections contain more information about the upgrade process from |chef server osc| to |chef server| version 12, including steps for a manual upgrade. Please consult with |company_name| support about any of these situations.

Background
=====================================================
The following assumptions are made about all upgrades from |chef server osc| version 11.0.0 (or higher) to |chef server| version 12.

* An organization must be created. Add the organization name as the vaue for the ``default_orgname`` setting in the ``chef-server.rb`` file. This will ensure that API requests made to the server prior to the upgrade process can still be made after.

Standalone>>Standalone
-----------------------------------------------------
The only supported upgrade path for a |chef server osc| server to |chef server| version 12 is from a standalone configuration to a standalone configuration.

Backup Server Data
-----------------------------------------------------
Like any migration or upgrade, it's strongly recommended to back up your data before doing any of the migration or upgrade steps. While we don't anticipate any issues with the upgrade process itself, it's better to be safe.

Organization Names
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


Server Data on Disk
-----------------------------------------------------
After the upgrade process, data related to the upgrade process will remain on the system:

* The data for the |chef server osc| server will be located in a temporary directory that was created as part of the upgrade process. This directory will be located at ``/tmp/chef11-server-data[some_random_string]``, unless the ``--chef11-data-dir`` option is used as part of the ``chef-server-ctl upgrade`` command.
* The data that was transformed by the upgrade process to the |chef server| version 12 format will be located in a temporary directory that was created during the upgrade process. This directory will be located at ``/tmp/chef12-server-data[some_random_string]``, unless the ``--chef12-data-dir`` option is used as part of the ``chef-server-ctl upgrade`` command.

To remove this data, post-upgrade, simply delete these directories. The current, default behavior of the upgrade process is to leave this data, in case it's required later.

Manual Upgrades
=====================================================
The migration process occurs in three steps: download the existing data from the |chef server osc| server, transform that data into the format required for |chef server| version 12, and then upload that data to the server.

The ``chef-server-ctl upgrade`` command will handle all three of these steps. Each of these three steps may be done individually, if required.

To upgrade to |chef server| 12 from the |chef server osc| server, do the following:

#. Run the following to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. Stop the |chef server osc| server:

   .. code-block:: bash
      
      $ chef-server-ctl stop

#. Run |debian dpkg| or |rpm| on the machine to install |chef server| version 12. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i /path/to/chef-server-core-<version>.deb

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh /path/to/chef-server-core-<version>.rpm

   |chef server| 12 is installed to ``/opt/opscode``. (The existing |chef server osc| remains at ``/opt/chef-server``.) From this point, the ``chef-server-ctl`` commands are running against the ``/opt/opscode`` location.


#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade chef12-upgrade-download

   This command will download data from the |chef server osc| server and place it into a temporary directory. See the "Subcommand Reference" section below for information about options that may be used with this command.

#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade chef12-upgrade-data-transform

   This command will create a temporary directory in which |chef server osc| data is transformed into the |chef server| version 12 format. See the "Subcommand Reference" section below for information about options that may be used with this command.

#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade chef12-upgrade-upload

   See the "Subcommand Reference" section below for information about options that may be used with this command.
   
   Before data can be uploaded, an organization must be created. When prompted, enter the organization name, and then a full organization name.

   The organization name must begin with a lower-case letter or digit, may only contain lower-case letters, digits, hyphens, and underscores, and must be between 1 and 255 characters. For example: ``chef``.

   The full organization name must begin with a non-white space character and must be between 1 and 1023 characters. For example: ``Chef Software, Inc.``.

#. When prompted, confirm that the upgrade process should take place.

#. Start |chef server| 12:

   .. code-block:: bash
      
      $ chef-server-ctl start

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