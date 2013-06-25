.. This is an included how-to. 


To edit the data for a node named "node1", enter:

.. code-block:: bash

   $ knife node edit node1 -a
   
Update the role data in JSON:

.. code-block:: javascript

   ## sample:
   {
      "normal": {
      },
      "name": "node1",
      "override": {
      },
      "default": {
      },
      "json_class": "Chef::Node",
      "automatic": {
      },
      "run_list": [
         "recipe[devops]",
         "role[webserver]"
      ],
      "chef_type": "node"
   }

When finished, save it.