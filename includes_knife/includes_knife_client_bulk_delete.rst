.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``bulk delete`` argument is used to delete any |chef api client| that matches a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/).

This argument has the following syntax::

   knife client bulk delete REGEX

This argument does not have any argument-specific options.

For example:

.. code-block:: bash

   $ knife client bulk delete "^[0-9]{3}$"




