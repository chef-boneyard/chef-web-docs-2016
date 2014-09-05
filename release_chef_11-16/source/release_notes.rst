=====================================================
Release Notes: |chef client| 11.16
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 11-16 and/or are changes from previous versions. The short version:

* **New dsc_script resource** Use the |resource dsc_script| resource to embed |windows powershell_dsc| scripts in |chef| recipes.


xxxxx Resource
-----------------------------------------------------
.. include:: ../../includes_resources/xxxxx.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/xxxxx.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/xxxxx.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/xxxxx.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Specify DSC code directly**

.. include:: ../../step_resource/step_resource_dsc_script_code.rst


**Specify DSC code using a Windows Powershell data file**

.. include:: ../../step_resource/step_resource_dsc_script_command.rst


**Pass parameters to DSC configurations**

.. include:: ../../step_resource/step_resource_dsc_script_flags.rst


**Use custom configuration data**

Configuration data in |windows powershell_dsc_short| scripts may be customized from a recipe. For example, scripts are typically customized to set the behavior for |windows powershell| credential data types. Configuration data may be specified in one of three ways: by using the ``configuration_data`` or ``configuration_data_script`` attributes or by specifying the path to a valid |windows powershell| data file. 

.. include:: ../../step_resource/step_resource_dsc_script_configuration_data.rst

.. include:: ../../step_resource/step_resource_dsc_script_configuration_name.rst


**Using DSC with other Chef resources**

.. include:: ../../step_resource/step_resource_dsc_script_remote_files.rst




Changelog
=====================================================
https://github.com/opscode/chef/blob/11-stable/CHANGELOG.md

.. What's Fixed
.. =====================================================
.. The following bugs were fixed:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. What's Improved
.. =====================================================
.. The following improvements were made:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. New Features
.. =====================================================
.. The following features were added:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx