.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a node from the |chef server|.

.. note:: Deleting a node will not delete any corresponding API clients.

This argument has the following syntax::

   knife node delete NODE_NAME

This argument does not have any argument-specific options.

For example, to delete a node called "dev", enter:

.. code-block:: bash

   $ knife node delete dev

