.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-d DIRECTORY``, ``--chef11-data-dir DIRECTORY``
   The directory in which Open Source Chef server 11 data is located. Default value: a temporary directory.

``-e DIRECTORY``, ``--chef12-data-dir DIRECTORY``
   The directory in which Chef server 12 data is located. Default value: a temporary directory.

``-f FULL_NAME``, ``--full-org-name FULL_NAME``
   The full name of the |chef server| organization. A full organization name must begin with a non-white space character and must be between 1 and 1023 characters. For example: ``Chef Software, Inc.``. If this option is not specified, the ``upgrade`` command will prompt for it.

``-h``, ``--help``
   Use to show help for the ``chef-server-ctl upgrade`` subcommand.

``-k KEY``, ``--key KEY``
   |file public_key| Default value: ``/etc/chef-server/admin.pem``.

``-o ORG_NAME``, ``--org-name ORG_NAME``
   The name of the |chef server| organization. An organization name must begin with a lower-case letter or digit, may only contain lower-case letters, digits, hyphens, and underscores, and must be between 1 and 255 characters. For example: ``chef``. If this option is not specified, the ``upgrade`` command will prompt for it.

``-s URL``, ``--chef11-server-url URL``
   The URL for the Open Source Chef or Enterprise Chef server, version 11. Default value: ``https://localhost``.

``-t NUMBER``, ``--upload-threads NUMBER``
   The number of threads to use when migrating cookbooks. Default value: ``10``.

``-u USER``, ``--user``
   |admin client|

``-x URL``, ``--chef12-server-url URL``
   The URL for the Chef server, version 12. Default value: ``https://localhost``.

``-y``, ``--yes``
   Use to skip confirmation prompts during the upgrade process.
