=====================================================
firewall Lightweight Resources
=====================================================

|cookbook name firewall|

The |cookbook firewall| cookbook contains the following resources: ``firewall`` and ``firewall_rule``.

.. note:: These resources are part of the |cookbook firewall| cookbook: https://github.com/opscode-cookbooks/firewall.

firewall
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``firewall`` resource:

**Enable the default firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_enable.rst

firewall_rule
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``firewall_rule`` resource:

**Open a port, enable a firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_ssh.rst

**Open a port, insert a rule, enable a firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_tcp.rst