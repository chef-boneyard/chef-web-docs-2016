.. This is an included file that describes a sub-command or argument in Knife.


The ``bulk delete`` argument is used to delete one or more roles that match a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/).

This argument has the following syntax::

   knife role bulk delete REGEX

This argument does not have any options.

For example:

.. code-block:: bash

   $ knife role bulk delete "^[0-9]{3}$"
   
