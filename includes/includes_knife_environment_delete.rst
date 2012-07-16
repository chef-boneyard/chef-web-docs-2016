.. This is an included file that describes a sub-command or argument in Knife.


The ``delete`` argument is used to delete an environment from a |chef server|. 

This argument has the following syntax::

   knife environment delete ENVIRONMENT_NAME

This argument does not have any options.

For example, to delete an environment named "dev", enter:

.. code-block:: bash

   $ knife environment delete dev

Type ``Y`` to confirm a deletion.


