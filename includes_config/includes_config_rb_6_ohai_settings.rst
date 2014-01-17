.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings can be added to the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ohai[:directory]``
     - |path plugin_ohai|
   * - ``ohai[:disabled_plugins]``
     - |disable plugin_ohai| For example:
       ::
 
          ohai[:disabled_plugins] = "my_plugin"

       or:
       ::
 
          ohai[:disabled_plugins] = "windows::my_plugin"

       or:
       ::
 
          ohai[:disabled_plugins] = ["passwd", "rackspace", "dmi", "dmi_common"]

   * - ``ohai[:hints_path]``
     - |path hint_ohai|
   * - ``ohai[:log_level]``
     - |log_level|
   * - ``ohai[:logfile]``
     - |log_location|
   * - ``ohai[:version]``
     - |version ohai|

