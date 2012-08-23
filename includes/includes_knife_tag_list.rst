.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to list all of the tags that have been applied to one or more nodes. 

This argument has the following syntax::

   knife tag list [NODE_NAME...]

This argument does not have any options.

For example, to view the tags for a single node, enter:

.. code-block:: bash

   $ knife tag list node

To view tags for more than one node, just specify the additional nodes:

.. code-block:: bash

   $ knife tag list node1 node2 node3
