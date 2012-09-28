.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``bulk delete`` argument is used to delete cookbook files that match a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/). 

This argument has the following syntax::

   knife cookbook bulk delete REGEX (options)

This argument has the following options:

``-p``, ``--purge``
   |purge cookbook|

For example:

.. code-block:: bash

   $ knife cookbook bulk delete "^[0-9]{3}$" -p
