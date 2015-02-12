.. THIS PAGE DOCUMENTS chef-client version 11.16

=====================================================
dsc_script 
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell_dsc.rst

.. include:: ../../includes_resources/includes_resource_dsc_script.rst

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_script| resource with |chef|.

.. note:: The |windows remote management| service must be enabled. (Use ``winrm quickconfig`` to enable the service.)

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_script_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_script_actions.rst

Attributes
=====================================================
.. include:: ../../release_chef_12-1/includes_resource_12-0_dsc_script_attributes.rst

Examples
=====================================================
|generic resource statement|

**Specify DSC code directly**

.. include:: ../../step_resource/step_resource_dsc_script_code.rst


**Specify DSC code using a Windows Powershell data file**

.. include:: ../../step_resource/step_resource_dsc_script_command.rst


**Pass parameters to DSC configurations**

.. include:: ../../step_resource/step_resource_dsc_script_flags.rst


**Use custom configuration data**

Configuration data in |windows powershell_dsc_short| scripts may be customized from a recipe. For example, scripts are typically customized to set the behavior for |windows powershell| credential data types. Configuration data may be specified in one of three ways:

* By using the ``configuration_data`` attribute
* By using the ``configuration_data_script`` attribute
* By specifying the path to a valid |windows powershell| data file

.. include:: ../../step_resource/step_resource_dsc_script_configuration_data.rst

.. include:: ../../step_resource/step_resource_dsc_script_configuration_name.rst


**Using DSC with other Chef resources**

.. include:: ../../step_resource/step_resource_dsc_script_remote_files.rst

