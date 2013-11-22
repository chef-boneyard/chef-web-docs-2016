=====================================================
Upgrade Private Chef
=====================================================

There are two upgrade scenarios for |chef private|: standalone and high availability.

.. warning:: This topic is not about how to upgrade from |chef private| to |chef server oec| 11. For information about how to upgrade from |chef private| to |chef server oec|, see the topics for `standalone <http://docs.opscode.com/upgrade_server_standalone.html>`_ and/or `high availability <http://docs.opscode.com/upgrade_server_ha.html>`_ upgrades.

Standalone Upgrade
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_standalone.rst

High Availability Upgrade
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha.rst

Identify Bootstrap Server
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_identify_bootstrap_server.rst

Identify Backend Master
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_identify_backend_master.rst

Set Backend Master
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_set_backend_master.rst

Upgrade Backend Master
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_backend_master.rst

Validate Backend Master
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_validate_backend_master.rst

Copy Configuration to Nodes
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_copy_config_to_nodes.rst

Upgrade Backend Slave
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_backend_slave.rst

Upgrade Front End
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_front_end.rst
