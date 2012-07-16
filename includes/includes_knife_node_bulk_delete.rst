.. This is an included file that describes a sub-command or argument in Knife.


The ``bulk delete`` argument is used to delete one or more nodes that match a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/).

This argument has the following syntax::

   knife node bulk delete REGEX

This argument does not have any options.

For example:

.. code-block:: bash

   $ knife node bulk delete "^[0-9]{3}$"

Type ``Y`` to confirm a deletion.

