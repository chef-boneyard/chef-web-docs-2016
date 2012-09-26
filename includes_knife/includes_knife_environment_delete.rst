.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete an environment from a |chef server|. 

This argument has the following syntax::

   knife environment delete ENVIRONMENT_NAME

This argument does not have any options.

For example, to delete an environment named "dev", enter:

.. code-block:: bash

   $ knife environment delete dev

Type ``Y`` to confirm a deletion.


