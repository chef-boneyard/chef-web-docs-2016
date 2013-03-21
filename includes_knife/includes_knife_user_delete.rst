.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``delete`` argument is used to delete a registered |chef| user.

This argument has the following syntax::

   knife user delete USER_NAME

This argument does not have any argument-specific options.

**Examples**

For example, to delete a user named "Steve Danno", enter:

.. code-block:: bash

   $ knife user delete "Steve Danno"
