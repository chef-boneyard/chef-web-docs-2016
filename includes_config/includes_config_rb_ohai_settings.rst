.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``Ohai::Config[:directory]``
     - |path plugin_ohai|
   * - ``Ohai::Config[:disabled_plugins]``
     - |disable plugin_ohai| For example:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin]

       or:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin, :MyPlugin, :MyPlugin]

       or to disable both |ohai 6| and |ohai 7| versions:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin, :MyPlugin, "my_ohai_6_plugin"]

   * - ``Ohai::Config[:hints_path]``
     - |path hint_ohai|
   * - ``Ohai::Config[:log_level]``
     - |log_level|
   * - ``Ohai::Config[:logfile]``
     - |log_location|
   * - ``Ohai::Config[:version]``
     - |version ohai|

.. note:: The |ohai| executable ignores settings in the |client rb| file when |ohai| is run independently of the |chef client|.