.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


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

