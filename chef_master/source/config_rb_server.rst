=====================================================
|chef server rb| Settings
=====================================================

.. include:: ../../includes_config/includes_config_rb_server.rst

.. note:: The |chef server rb| file does not exist by default. To modify the settings for the |chef server|, create a file named ``chef-server.rb`` in the ``/etc/opscode/`` directory.

.. note:: This file was named |private chef rb| in previous versions of |chef server oec|. After an upgrade to |chef server| 12 from |chef server oec|, the |private chef rb| file is symlinked to |chef server rb|. The |private chef rb| file is deprecated, starting with |chef server| 12.

Use Conditions
=====================================================
.. include:: ../../step_config/step_config_add_condition.rst

Recommended Settings
=====================================================
.. include:: ../../includes_server_tuning/includes_server_tuning_general.rst

SSL Protocols
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_nginx.rst

Optional Settings
=====================================================
The following settings are often used for performance tuning of the |chef server| in larger installations.

.. note:: When changes are made to the |chef server rb| file the |chef server| must be reconfigured by running the ``chef-server-ctl reconfigure`` command.

.. note:: Review the full list of :doc:`optional settings </config_rb_server_optional_settings>` that can be added to the |chef server rb| file. Many of these optional settings should not be added without first consulting with |company_name| support.

bookshelf
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_bookshelf.rst

.. warning:: .. include:: ../../includes_notes/includes_notes_server_aws_cookbook_storage.rst

opscode-account
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_account.rst

opscode-erchef
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_erchef.rst

opscode-expander
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_expander.rst

opscode-solr4
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_solr.rst

Update Frequency
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_solr_update_frequency.rst

postgresql
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_postgresql.rst

rabbitmq
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_rabbitmq.rst
