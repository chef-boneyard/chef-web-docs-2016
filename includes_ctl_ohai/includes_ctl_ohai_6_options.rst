.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Ohai.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax:

.. code-block:: bash

   $ ohai OPTION

This tool has the following options:

``-d PATH``, ``--directory PATH``
   |path plugin_ohai| For example: ``/etc/ohai/plugins``. (Only one directory may be specified when using this option.)

``-f FILE_NAME``, ``--file FILE_NAME``
   The name of an |ohai| plugin against which |ohai| will run. (Only one |ohai| plugin may be specified when using this option.)

``-h``, ``--help``
   |help subcommand|

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOGLOCATION``, ``--logfile c``
   |log_location|

``-v``, ``--version``
   |version ohai|

