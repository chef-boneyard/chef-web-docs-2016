.. This is an included file that describes a sub-command or argument in Knife.


The ``delete`` argument is used to delete a node from the |chef server|.

.. note:: Deleting a node will not delete any corresponding API clients.

This argument has the following syntax::

   knife node delete NODE_NAME

This argument does not have any options.

For example, to delete a node called "dev", enter:

.. code-block:: bash

   $ knife node delete dev

