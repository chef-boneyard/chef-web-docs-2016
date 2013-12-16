=====================================================
|enterprise rb|
=====================================================

.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise.rst

Customize the Config File
=====================================================
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise.rst

Use Conditions
-----------------------------------------------------
.. include:: ../../step_config/step_config_add_condition.rst

Recommended Settings
=====================================================
.. include:: ../../includes_server_tuning/includes_server_tuning_general.rst

Optional Settings
=====================================================
The following settings are often used for performance tuning of |chef server oec| in larger installations.

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

.. warning:: Review the full list of `optional settings <http://docs.opscode.com/config_rb_chef_server_enterprise_optional_settings.html>`_ that can be added to the |enterprise rb| file. Many of these optional settings should not be added without first consulting with |company_name| support.




