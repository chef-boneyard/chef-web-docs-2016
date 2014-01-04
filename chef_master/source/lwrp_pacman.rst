=====================================================
pacman Lightweight Resources
=====================================================

|cookbook name pacman|

The |cookbook pacman| cookbook contains the following resources: ``pacman_aur`` and ``pacman_group``.

.. note:: These resources are part of the |cookbook pacman| cookbook: https://github.com/opscode-cookbooks/pacman.

pacman_aur
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``pacman_aur`` resource:

**Use a simple package**

.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_simple_package.rst

**Use a custom package**

.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_custom_package.rst

pacman_group
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``pacman_group`` resource:

**Remove a group**

.. include:: ../../step_lwrp/step_lwrp_pacman_group_base_devel.rst