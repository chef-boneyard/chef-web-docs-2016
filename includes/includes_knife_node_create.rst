.. This is an included file that describes a sub-command or argument in Knife.


The ``create`` argument is used to add a node to the |chef server|. Node data is stored as JSON on the |chef server|.

This argument has the following syntax::

   knife node create NODE_NAME

This argument does not have any options.

For example, to add a node, enter:

.. code-block:: bash

   $ knife node create node1
   
In the $EDITOR enter the node data in JSON:

.. code-block:: bash

   ## sample:
   {
      "normal": {
      },
      "name": "foobar",
      "override": {
      },
      "default": {
      },
      "json_class": "Chef::Node",
      "automatic": {
      },
      "run_list": [
         "recipe[zsh]",
         "role[webserver]"
      ],
      "chef_type": "node"
   }

When finished, save it.

