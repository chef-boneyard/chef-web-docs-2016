.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife diff|

This sub-command has the following syntax::

   knife diff [PATTERN...] (options)

This sub-command has the following options:

``--name-only``
   Indicates that only the names of modified files will be shown.

``--name-status``
   Indicates that only the names of files with a status of ``Added``, ``Deleted``, ``Modified``, or ``Type Changed`` will be shown.

``--[no-]recurse``
   Use ``--no-recurse`` to disable listing a directory recursively. Listing a directory recursively is enabled by default.

For example, to compare the differences between the local |chef| repository and the files that are on the |chef server|, enter:

.. code-block:: bash

   $ knife diff

To compare the "base.json" role to a "webserver.json" role, enter:

.. code-block:: bash

   $ knife diff roles/base.json roles/webserver.json