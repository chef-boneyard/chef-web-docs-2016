=====================================================
netdev Lightweight Resources
=====================================================

.. warning:: This is a draft for future functionality that will be added to Chef.

The |cookbook netdev| cookbook is used to install and configure networking hardware by |juniper| and Arista.

The |cookbook netdev| cookbook contains the following resources: ``netdev_interface``, ``netdev_l2_interface``, ``netdev_lag``, and ``netdev_vlan``.

.. note:: These resources are part of the |cookbook netdev| cookbook: https://github.com/opscode-cookbooks/netdev.

netdev_interface
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_netdev_interface.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_interface_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_interface_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``netdev_interface`` resource:

**Create an interface**

.. include:: ../../step_lwrp/step_lwrp_netdev_interface.rst

netdev_l2_interface
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_netdev_l2_interface.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_l2_interface_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_l2_interface_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``netdev_l2_interface`` resource:

**Create a Layer 2 interface**

.. include:: ../../step_lwrp/step_lwrp_netdev_l2_interface.rst

netdev_lag
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_netdev_lag.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_lag_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_lag_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``netdev_lag`` resource:

**Create a link aggregation group**

.. include:: ../../step_lwrp/step_lwrp_netdev_lag.rst

netdev_vlan
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_netdev_vlan.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_vlan_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_netdev_vlan_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``netdev_vlan`` resource:

**Create a VLAN**

.. include:: ../../step_lwrp/step_lwrp_netdev_vlan.rst