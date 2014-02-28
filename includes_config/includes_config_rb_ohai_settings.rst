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
 
          Ohai::Config[:disabled_plugins] = :my_plugin

       or:
       ::
 
          Ohai::Config[:disabled_plugins] = [:passwd, :rackspace, :dmi, :dmi_common]

   * - ``Ohai::Config[:hints_path]``
     - |path hint_ohai|
   * - ``Ohai::Config[:log_level]``
     - |log_level|
   * - ``Ohai::Config[:logfile]``
     - |log_location|
   * - ``Ohai::Config[:version]``
     - |version ohai|

.. note:: The |ohai| executable ignores settings in the |client rb| file when |ohai| is run independently of the |chef client|.