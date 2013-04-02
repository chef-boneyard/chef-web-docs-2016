=====================================================
Tiered
=====================================================

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered.rst

System Requirements
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_system_requirements.rst

Network Requirements
=====================================================
|chef private| has the following network requirements for a tiered installation:

Load Balancing
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_network_load_balance.rst

Firewalls
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_network_firewalls.rst

private-chef.rb
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb.rst

Configure topology
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb_set_topology.rst

Back-end entries
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb_add_backend.rst

Front-end entries
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb_add_frontend.rst

Set api_fqdn
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb_set_api_fqdn.rst

Example
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_private_chef_rb_example.rst

Add Package to Servers
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_add_package_to_server.rst

Configure Bootstrap
=====================================================
The following sections describe what is required to configure the bootstrap server.

Add private-chef.rb
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_put_private_chef_rb_on_bootstrap.rst

Install |chef private|
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_install_private_chef_on_bootstrap.rst

Configure 
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_config_bootstrap.rst

Configure Front-end
=====================================================
The following sections describe what is required to configure the front-end server.

Copy /etc/opscode
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_copy_etc_opscode.rst

Install package
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_install_package_on_front_end.rst

Configure
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_config_front_end.rst

Success!
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_tiered_success.rst

