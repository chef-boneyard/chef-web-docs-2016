.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-e DIRECTORY``, ``--chef12-data-dir DIRECTORY``
   The directory in which Chef server 12 data is located. Default value: a temporary directory.

``-h``, ``--help``
   Use to show help for the ``chef-server-ctl upgrade`` subcommand.

``-t NUMBER``, ``--upload-threads NUMBER``
   The number of threads to use when migrating cookbooks. Default value: ``10``.

``-x URL``, ``--chef12-server-url URL``
   The URL for the Chef server, version 12. Default value: ``https://localhost``.
