.. This is an included file that describes a sub-command or argument in Knife.


The ``edit`` argument is used to edit the details of a node on a |chef server|. Node data is stored as JSON on the |chef server|.

This argument has the following syntax::

   knife node edit NODE_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all|

For example, to edit the data for a node named "node1", enter:

.. code-block:: bash

   $ knife node edit node1 -a
   
Update the role data in JSON:

.. code-block:: bash

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

