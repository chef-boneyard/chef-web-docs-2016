.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-d DIRECTORY``, ``--chef11-data-dir DIRECTORY``
   The directory in which |chef server osc| 11 data is located. Default value: a temporary directory.

``-h``, ``--help``
   Use to show help for the ``chef-server-ctl upgrade`` subcommand.

``-k KEY``, ``--key KEY``
   |file public_key| Default value: ``/etc/chef-server/admin.pem``.

``-s URL``, ``--chef11-server-url URL``
   The URL for the |chef server osc| or |chef server oec| server, version 11. Default value: ``https://localhost``.

``-u USER``, ``--user``
   |admin client|
