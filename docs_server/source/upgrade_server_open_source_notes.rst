=====================================================
Notes for Open Source Chef Upgrades 
=====================================================

The following sections contain more information about the upgrade process from |chef server osc| to |chef server| version 12, including steps for a manual upgrade. Please consult with |company_name| support about any of these situations.

Background
=====================================================
placeholder

xxxxx
-----------------------------------------------------
placeholder

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