.. This is an included how-to. 


To add a node named ``node1``, enter:

.. code-block:: bash

   $ knife node create node1
   
In the |chef editor| enter the node data in |json|:

.. code-block:: javascript

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