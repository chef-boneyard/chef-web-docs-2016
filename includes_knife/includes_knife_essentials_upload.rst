.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``upload`` argument is used to upload objects to the |chef server| from the local repository.

This sub-command has the following syntax::

   knife upload [PATTERN...] (options)

This sub-command has the following options:

``-n``, ``--dry-run``
   Indicates that no action is taken and that results are only printed out.

``--[no-]force``
   Use ``--no-force`` to disable uploading files when an identical file is already present in the directory. Uploading files (even when identical files are already present) is enabled by default.

``--[no-]purge``
   Use ``--no-purge`` to disable the deletion of files locally when they do not exist remotely. Use ``--purge`` to delete local files and directories that do not exist on the |chef server|.

``--[no-]recurse``
   Use ``--no-recurse`` to disable listing a directory recursively. Listing a directory recursively is enabled by default.

For example, to xxxxx:

.. code-block:: bash

   $ knife xxxxx

To xxxxx:

.. code-block:: bash

   $ knife xxxxx