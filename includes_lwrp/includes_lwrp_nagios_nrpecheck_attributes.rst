.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - The name of the command to be executed. Default value: ``node['nagios']['plugin']['plugin_dir']/command_name``.
   * - ``command_name``
     - The name of the |nagios nrpe| check. This must be referenced in the ``commands.cfg`` template.
   * - ``critical_condition``
     - A string that is passed to the command using the ``-c`` flag.
   * - ``parameters``
     - One (or more) additional parameters that are passed to the command.
   * - ``warning_condition``
     - |warning_condition|
