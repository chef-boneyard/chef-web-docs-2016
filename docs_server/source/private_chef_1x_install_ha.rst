=====================================================
High Availability
=====================================================

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha.rst

System Requirements
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_system_requirements.rst

Network Requirements
=====================================================
|chef private| has the following network requirements for a high availability installation:

Networking
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_network_backend.rst

Virtual IP Addresses
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_network_virtual_ips.rst

Disk Configuration
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_network_disc_config.rst

Load Balancing
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_network_load_balancers.rst

Firewalls
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_network_firewalls.rst

private-chef.rb
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb.rst

Set the topology
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb_set_topology.rst

Back-end entries
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb_add_backend.rst

Front-end entries
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb_add_frontend.rst

Set api_fqdn
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb_set_api_fqdn.rst

Example
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_private_chef_rb_example.rst

Add Package to Servers
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_add_package_to_server.rst

Add private-chef.rb to /etc/opscode
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_copy_etc_opscode.rst

Install |chef private| on backend
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_install_package_on_backend.rst

Install |drbd| on back-end servers
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_install_drbd_on_backend.rst

Configure |drbd| on the back-end bootstrap server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_config_drbd_for_bootstrap.rst

Copy config to non-bootstrap back-end server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_copy_config_to_non_bootstrap_backend.rst

Configure |drbd| for non-bootstrap back-end server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_config_drbd_for_non_bootstrap_backend.rst

Set bootstrap server to be the primary server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_set_bootstrap_primary_for_drbd.rst

Mount the file system on the |drbd| server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_create_filesystem_on_drbd.rst

Monitor the |drbd| server for initial synchronization
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_monitor_device_sync.rst

Configure |chef private| on the bootstrap server
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_config_private_chef_on_bootstrap.rst

Configure |chef private| on non-bootstrap back-end
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_config_non_bootstrap_backend.rst

Configure Front-end
=====================================================
The following sections describe what is required to configure the front-end server.

Copy /etc/opscode
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_copy_etc_opscode_to_frontend.rst

Install package
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_install_private_chef_on_frontend.rst

Configure
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_config_private_chef_on_frontend.rst

Success!
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_success.rst

Using GRE Tunnels
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_install_ha_gre_tunnels.rst

