=====================================================
Performance Tuning
=====================================================

.. include:: ../../includes_server_tuning/includes_server_tuning.rst

.. note:: |note enterprise_chef_tuning|

Customize the Config File
=====================================================
The |enterprise rb| file is contains all of the configuration settings used by the |chef server oec| server. These configuration settings are processed when the ``private-chef-ctl reconfigure`` command is run, such as immediately after setting up the |chef server oec| server or after making a change to the underlying configuration settings after the server has been deployed. The |enterprise rb| file is a |ruby| file, which means that conditional statements can be used in the configuration file.

Use Conditions
-----------------------------------------------------
.. include:: ../../step_config/step_config_add_condition.rst

Tuning Services
=====================================================
.. include:: ../../step_config/step_config_add_condition.rst

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

opscode-webui
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_webui.rst

postgresql
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_postgresql.rst


