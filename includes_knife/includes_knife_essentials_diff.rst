.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``diff`` argument is used to compare the differences between files and directories. This sub-command is useful for ensuring that the files on the |chef server| are the correct files prior to an upload. Or for ensuring that multiple production environments need to have the same set of files.

This sub-command has the following syntax::

   knife diff [PATTERN...] (options)

This sub-command has the following options:

``--name-only``
   Indicates that only the names of modified files will be shown.

``--name-status``
   Indicates that only the names of files with a status of ``Added``, ``Deleted``, ``Modified``, or ``Type Changed`` will be shown.

``--[no-]recurse``
   Use ``--no-recourse`` to disable listing a directory recursively. Listing a directory recursively is enabled by default. **jamescott: THIS ONE HAS A SLIGHTLY DIFFERENT ATTRIBUTE NAME THAN DOWNLOAD AND UPLOAD. BY DESIGN OR BY ACCIDENT?**

For example, to compare the differences between the local |chef| repository and the files that are on the |chef server|, enter:

.. code-block:: bash

   $ knife diff

To xxxxx:

.. code-block:: bash

   $ knife xxxxx