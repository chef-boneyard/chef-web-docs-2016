=====================================================
chef-server.rb
=====================================================

.. include:: ../../includes_config/includes_config_rb_chef_server.rst

.. note:: If the |chef server rb| file does not exist, create a file called ``chef-server.rb`` and put it in the ``/etc/chef-server/`` directory.

Recommended Settings
=====================================================
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_general.rst

Optional Settings
=====================================================
The following settings are often used for performance tuning of |chef server osc| in larger installations.

.. note:: When changes are made to the |chef server rb| file the |chef server osc| must be reconfigured by running the ``chef-server-ctl reconfigure`` command.

bookshelf
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_bookshelf.rst

chef-expander
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_expander.rst

chef-solr
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_solr.rst

Update Frequency
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_solr_update_frequency.rst

erchef
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_erchef.rst

postgresql
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_postgresql.rst

webui
-----------------------------------------------------
.. include:: ../../includes_server_tuning_osc/includes_server_tuning_osc_webui.rst

.. warning:: Review the full list of `optional settings <http://docs.opscode.com/config_rb_chef_server_optional_settings.html>`_ that can be added to the |chef server rb| file. Many of these optional settings should not be added without first consulting with |company_name| support.







