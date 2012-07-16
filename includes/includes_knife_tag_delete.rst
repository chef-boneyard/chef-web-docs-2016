.. This is an included file that describes a sub-command or argument in Knife.


The ``delete`` argument is used to delete one or more tags from a node. 

This argument has the following syntax::

   knife tag delete NODE_NAME [TAG...]

This argument does not have any options.

For example:

.. code-block:: bash

   $ knife tag delete node tag1 tag2 tag3

Type ``Y`` to confirm a deletion.
