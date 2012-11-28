.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife upload| This sub-command is often used in conjunction with ``knife diff``, which can be used to see exactly what changes will be uploaded, and then ``knife download``, which does the opposite of ``knife upload``.

This sub-command has the following syntax::

   knife upload [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   |dry_run|

``--purge``
   |purge knife upload|

``--recurse``
   |no recurse upload|

``--force``
   |force knife upload|

**Examples**

.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks.rst

.. include:: ../../step_knife/step_knife_upload_directory_environments.rst

.. include:: ../../step_knife/step_knife_upload_directory_environment.rst

.. include:: ../../step_knife/step_knife_upload_directory_roles.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks_and_role.rst





