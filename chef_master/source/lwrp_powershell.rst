=====================================================
powershell Lightweight Resource
=====================================================

|cookbook name powershell|

The |cookbook powershell| cookbook contains the following lightweight resource: ``powershell``.

.. warning:: The |resource powershell_script| resource was added in |chef 11-6| as a core resource. In general, it is recommended to use the |resource powershell_script| resource instead of the |lwrp powershell| lightweight resource included in the |cookbook powershell| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

powershell
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_powershell.rst

.. note:: This lightweight resource is part of the |cookbook powershell| cookbook (http://community.opscode.com/cookbooks/powershell).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_powershell_change_hostname.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_pass_env_variable.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_set_cwd_attribute.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_use_cwd.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_write_to_interpolated_path.rst