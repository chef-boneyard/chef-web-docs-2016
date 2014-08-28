.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

=====================================================
Server Tuning
=====================================================

.. include:: ../../includes_server_tuning/includes_server_tuning.rst

.. note:: |note enterprise_chef_tuning|

Customize the Config File
=====================================================
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise.rst

Use Conditions
-----------------------------------------------------
.. include:: ../../step_config/step_config_add_condition.rst

Recommended Settings
=====================================================
The following settings are typically added to the |enterprise rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``api_fqdn``
     - The |fqdn| for the |chef server|. This setting is not in the |enterprise rb| file by default. When added, its value should be equal to the |fqdn| for the service URI used by the |chef server|. Then configure the same value for the ``bookshelf['vip']`` setting prior to installing |chef server oec|. For example: ``api_fqdn "chef.example.com"``.
   * - ``bookshelf['vip']``
     - |ip_address virtual| Default value: ``node['fqdn']``. (This setting is related to the |service bookshelf| service.)
   * - ``bootstrap``
     - Default value: ``true``.
   * - ``notification_email``
     - Default value: ``info@example.com``.

Optional Settings
=====================================================
The following settings are often used to for performance tuning of |chef server oec| in larger installations.

.. note:: When changes are made to the |enterprise rb| file the |chef server oec| must be reconfigured by running the ``private-chef-ctl reconfigure`` command.

bookshelf
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_bookshelf.rst

opscode-account
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_account.rst

opscode-chef
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_chef.rst

opscode-erchef
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_erchef.rst

opscode-expander
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_expander.rst

opscode-solr
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_solr.rst

Update Frequency
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_solr_update_frequency.rst

opscode-webui
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_webui.rst

postgresql
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_postgresql.rst
