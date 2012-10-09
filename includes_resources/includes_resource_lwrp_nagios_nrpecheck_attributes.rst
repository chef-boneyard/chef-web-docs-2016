.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:command``
     - The command to be executed (including the path). If this value is not specified, ``node['nagios']['plugin']['plugin_dir']/command_name`` is used.
   * - ``:command_name``
     - The name of the |nagios nrpe| check. This must be referenced in the commands.cfg template.
   * - ``:critical_condition``
     - A string that is passed to the command using the ``-c`` flag.
   * - ``:parameters``
     - One (or more) additional parameters that are passed to the command.
   * - ``:warning_condition``
     - A string that is passed to the command using the ``-w`` flag.
