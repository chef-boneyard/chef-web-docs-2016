.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - The name of the command to be executed.
   * - ``creates``
     - A file that is created by the command. If the file exists, the command will not run.
   * - ``cwd``
     - The current working directory from which a command is run.
   * - ``environment``
     - A hash of environment variables that must be set before the command can be run.
   * - ``group``
     - A group name or group identifier that must be changed before the command can be run.
   * - ``returns``
     - The return value of the command. This value may be an array of accepted values. If the return value(s) do not match, an exception is returned.
   * - ``timeout``
     - The amount of time (in seconds) a command will run before it times out.
   * - ``user``
     - A user name or user identifier that myst be changed before the command can be run.