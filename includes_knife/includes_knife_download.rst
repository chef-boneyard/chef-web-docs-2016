.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife download| It can be used to back up data on the |chef server|, inspect the state of one or more files, or to extract out-of-process changes users may have made to files on the |chef server|, such as if a user made a change that bypassed version source control. This subcommand is often used in conjunction with ``knife diff``, which can be used to see exactly what changes will be downloaded, and then ``knife upload``, which does the opposite of ``knife download``.

This subcommand has the following syntax::

   knife download [PATTERN...] (options)

This subcommand has the following options:

``-n``, ``--dry-run``
   |dry_run|

``--purge``
   |purge knife download|

``--no-recurse``
   |no recurse download|

``--force``
   |force knife download|

**Examples**

.. include:: ../../step_knife/step_knife_download_repository.rst

.. include:: ../../step_knife/step_knife_download_directory_cookbooks.rst

.. include:: ../../step_knife/step_knife_download_directory_environments.rst

.. include:: ../../step_knife/step_knife_download_directory_environment.rst

.. include:: ../../step_knife/step_knife_download_directory_roles.rst

.. include:: ../../step_knife/step_knife_download_directory_cookbooks_and_role.rst

