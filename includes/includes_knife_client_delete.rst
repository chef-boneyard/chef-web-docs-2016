.. This is an included file that describes a sub-command or argument in Knife.


The ``delete`` argument is used to delete a registered client.

.. note:: Deleting a client will not delete any corresponding API clients.

This argument has the following syntax::

   knife client delete CLIENT_NAME

This argument does not have any options.

For example, to delete a client with the name "exampleorg-validator", enter:

.. code-block:: bash

   $ knife client delete exampleorg-validator

Type ``Y`` to confirm a deletion.

