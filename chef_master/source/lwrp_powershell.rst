=====================================================
powershell Lightweight Resource
=====================================================

|cookbook name powershell|

The |cookbook powershell| cookbook contains the following resource: ``powershell``.

This resource has been added to the |chef client|, starting with |chef 11|

.. warning:: The |resource powershell_script| resource has been added to the |chef client|, starting with |chef 11-6|. In general, it is recommended to use the |resource powershell_script| resource instead of the |lwrp powershell| resource included in the |cookbook powershell| cookbook whenever possible, including updating any existing recipes that may be using the older resource in favor of the newer resource.

powershell
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_powershell.rst

.. note:: This resource is part of the |cookbook powershell| cookbook: https://github.com/opscode-cookbooks/powershell.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``powershell`` resource:

**Change a hostname**

.. include:: ../../step_lwrp/step_lwrp_powershell_change_hostname.rst

**Pass an environment variable**

.. include:: ../../step_lwrp/step_lwrp_powershell_pass_env_variable.rst

**Set the cwd attribute**

.. include:: ../../step_lwrp/step_lwrp_powershell_set_cwd_attribute.rst

**Use the cwd attribute**

.. include:: ../../step_lwrp/step_lwrp_powershell_use_cwd.rst

**Write to an interpolated path**

.. include:: ../../step_lwrp/step_lwrp_powershell_write_to_interpolated_path.rst