.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-e DIRECTORY``, ``--chef12-data-dir DIRECTORY``
   The directory in which |chef server| version 12 data is located. Default value: a temporary directory.

``-h``, ``--help``
   Use to show help for the ``chef-server-ctl upgrade`` subcommand.

``-o NAME``, ``--org-name NAME``
   Use to specify the name of the |chef server| organization.

   |name_rules org| For example: ``chef``.

   |name_rules org_full| For example: ``Chef Software, Inc.``.

``-S``, ``--setup-only``
   Use to start |chef server| 12 in preparation for uploading data. This option does not upload data to the |chef server|.

``-u``, ``--upload-only``
   Use to upload data to |chef server| 12. This option requires |chef server| 12 to be running.

``-t NUMBER``, ``--upload-threads NUMBER``
   The number of threads to use when migrating cookbooks. Default value: ``10``.

``-x URL``, ``--chef12-server-url URL``
   The URL for the |chef server| version 12. Default value: ``https://localhost``.
