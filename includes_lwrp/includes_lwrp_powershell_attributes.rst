.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - The name of the command to be executed.
   * - ``creates``
     - Indicates that a command to create a file will not be run when that file already exists.
   * - ``cwd``
     - The current working directory from which a command is run.
   * - ``environment``
     - A |ruby hash| of environment variables in the form of ``{"ENV_VARIABLE" => "VALUE"}``. (These variables must exist for a command to be run successfully.)
   * - ``group``
     - The group name or group ID that must be changed before running a command.
   * - ``returns``
     - The return value for a command. This may be an array of accepted values. An exception is raised when the return value(s) do not match. Default value: ``0``.
   * - ``timeout``
     - The amount of time (in seconds) a command will wait before timing out.
   * - ``user``
     - A user name or identifier that must be changed before running a command.