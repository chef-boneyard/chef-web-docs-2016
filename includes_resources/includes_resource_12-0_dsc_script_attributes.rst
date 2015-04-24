.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - |code powershell| |dsc_script no_command|
   * - ``command``
     - |command powershell| |dsc_script no_code|
   * - ``configuration_data``
     - |config powershell| The configuration data must be `a valid Windows Powershell data file <http://msdn.microsoft.com/en-us/library/dd878337(v=vs.85).aspx>`_. |dsc_script no_config_data_script|
   * - ``configuration_data_script``
     - |path powershell_data_file| |dsc_script no_config_data|
   * - ``configuration_name``
     - |name powershell_cmdlet| |dsc_script no_code|
   * - ``cwd``
     - |cwd|
   * - ``environment``
     - |environment variables|
   * - ``flags``
     - |flags powershell| |dsc_script no_code| For example: ``flags ({ :EditorChoice => 'emacs', :EditorFlags => '--maximized' })``. Default value: ``nil``.

