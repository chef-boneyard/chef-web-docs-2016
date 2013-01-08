=====================================================
firewall
=====================================================

|cookbook name firewall|

The ``firewall`` cookbook contains the following lightweight resources: ``firewall`` and ``firewall_rule``.

firewall
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_firewall_enable.rst

firewall_rule
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_ssh.rst

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_tcp.rst