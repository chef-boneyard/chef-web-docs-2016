.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``diff`` sub-command is used to compare the differences between files and directories on the |chef server| and in the |chef| repository. This sub-command is useful when the files on the |chef server| and in the |chef| repository need to be compared, such as when files on the |chef server| need to be verified prior to an upload or to ensure that certain files in multiple production environments are the same. This sub-command is similar to the ``git diff`` command that can be used to diff what is in the |chef| repository with what is synced to a |github| repository. 

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

To xxxxx:

.. code-block:: bash

   $ knife xxxxx