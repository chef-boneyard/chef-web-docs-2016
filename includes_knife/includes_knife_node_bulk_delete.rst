.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``bulk delete`` argument is used to delete one or more nodes that match a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/).

This argument has the following syntax::

   knife node bulk delete REGEX

This argument does not have any options.

For example:

.. code-block:: bash

   $ knife node bulk delete "^[0-9]{3}$"

Type ``Y`` to confirm a deletion.

