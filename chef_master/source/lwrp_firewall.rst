=====================================================
firewall
=====================================================

.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

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
.. include:: ../../steps/step_chef_lwrp_firewall_enable.rst

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
.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_ssh.rst

.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_tcp.rst