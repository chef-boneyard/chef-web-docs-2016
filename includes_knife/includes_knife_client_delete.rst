.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a registered client.

.. note:: Deleting a client will not delete any corresponding API clients.

This argument has the following syntax::

   knife client delete CLIENT_NAME

This argument does not have any options.

For example, to delete a client with the name "exampleorg-validator", enter:

.. code-block:: bash

   $ knife client delete exampleorg-validator

Type ``Y`` to confirm a deletion.

