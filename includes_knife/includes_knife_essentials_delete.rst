.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` sub-command is used to delete an object from a |chef server|. This sub-command works similar to ``knife cookbook delete``, ``knife data bag delete``, ``knife environment delete``, ``knife node delete``, and ``knife role delete``, but with a single verb (and a single action).

This sub-command has the following syntax::

   knife delete [PATTERN...] (options)

This sub-command has the following options:

``--[no-]recurse``
   Use ``--no-recurse`` to disable listing a directory recursively. Listing a directory recursively is enabled by default. **jamescott: CHANGED DELETE, DIFF, DOWNLOAD, AND UPLOAD TO BE --no-recurse. PLEASE CONFIRM THAT IS CORRECT AND THEN I CAN DELETE THIS NOTE. IF THAT IS CORRECT, ALSO TWO OF THE SUBCOMMANDS HAVE TYPOS IN THE CODE**

For example, to xxxxx:

.. code-block:: bash

   $ knife xxxxx

To xxxxx:

.. code-block:: bash

   $ knife xxxxx