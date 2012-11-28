.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete one or more tags from a node. 

This argument has the following syntax::

   knife tag delete NODE_NAME [TAG...]

This argument does not have any argument-specific options.

**Examples**

To delete tags named "denver" and "phoenix", enter:

.. code-block:: bash

   $ knife tag delete node denver phoenix

Type ``Y`` to confirm a deletion.
