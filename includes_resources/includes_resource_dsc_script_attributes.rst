.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - **Ruby Type:** String

       |code powershell| |dsc_script no_command|
   * - ``command``
     - **Ruby Type:** String

       |command powershell| |dsc_script no_code|
   * - ``configuration_data``
     - **Ruby Type:** String

       |config powershell| The configuration data must be `a valid Windows Powershell data file <http://msdn.microsoft.com/en-us/library/dd878337(v=vs.85).aspx>`_. |dsc_script no_config_data_script|
   * - ``configuration_data_script``
     - **Ruby Type:** String

       |path powershell_data_file| |dsc_script no_config_data|
   * - ``configuration_name``
     - **Ruby Type:** String

       |name powershell_cmdlet| |dsc_script no_code|
   * - ``cwd``
     - **Ruby Type:** String

       |cwd|
   * - ``environment``
     - **Ruby Type:** Hash

       |environment variables|
   * - ``flags``
     - **Ruby Type:** Hash

       |flags powershell| |dsc_script no_code| For example: ``flags ({ :EditorChoice => 'emacs', :EditorFlags => '--maximized' })``. Default value: ``nil``.
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``imports``
     - **Ruby Type:** Array

       Use to import |windows powershell_dsc_short| resources from a module. To import all resources from a module, specify only the module name:

       .. code-block:: ruby

          imports "module_name"

       To import specific resources, specify the module name, and then specify the name for each resource in that module to import:

       .. code-block:: ruby

          imports "module_name", "resource_name_a", "resource_name_b", ...

       For example, to import all resources from a module named ``cRDPEnabled``:

       .. code-block:: ruby

          imports "cRDPEnabled"

       And to import only the ``PSHOrg_cRDPEnabled`` resource:

       .. code-block:: ruby

          imports "cRDPEnabled", "PSHOrg_cRDPEnabled"

   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``timeout``
     - **Ruby Types:** Integer

       |timeout command|
