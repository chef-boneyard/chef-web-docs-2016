=====================================================
knife node
=====================================================

.. include:: ../../includes_node/includes_node.rst

.. include:: ../../includes_knife/includes_knife_node.rst

bulk delete
=====================================================
.. include:: ../../includes_knife/includes_knife_node_bulk_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_bulk_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example:

.. code-block:: bash

   $ knife node bulk delete "^[0-9]{3}$"

Type ``Y`` to confirm a deletion.

create
=====================================================
.. include:: ../../includes_knife/includes_knife_node_create.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_create_syntax.rst

**Options**

|no_options|

**Examples**

For example, to add a node, enter:

.. code-block:: bash

   $ knife node create node1
   
In the $EDITOR enter the node data in JSON:

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


delete
=====================================================
.. include:: ../../includes_knife/includes_knife_node_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example, to delete a node called "dev", enter:

.. code-block:: bash

   $ knife node delete dev

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_node_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_edit_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_node_edit_options.rst

**Examples**

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

from file
=====================================================
.. include:: ../../includes_knife/includes_knife_node_from_file.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_from_file_syntax.rst

**Options**

|no_options|

**Examples**

For example:

.. code-block:: bash

   $ knife node from file "path to JSON file"

list
=====================================================
.. include:: ../../includes_knife/includes_knife_node_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_node_list_options.rst

**Examples**

.. include:: ../../step_knife/step_knife_node_list_all.rst

run_list add
=====================================================
.. include:: ../../includes_knife/includes_knife_node_run_list_add.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_run_list_add_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_node_run_list_add_options.rst

**Examples**

For example, to add a role to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'role[ROLE_NAME]'

To add a recipe to a run list using the fully qualified format, enter:

.. code-block:: bash

   $ knife node run_list add node 'recipe[COOKBOOK::RECIPE_NAME]'

To add a recipe to a run list using the cookbook format, enter:

.. code-block:: bash

   $ knife node run_list add node 'COOKBOOK::RECIPE_NAME'

To add the default recipe of a cookbook to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'COOKBOOK'

To add roles and recipes to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'recipe[COOKBOOK::RECIPE_NAME],COOKBOOK::RECIPE_NAME,role[ROLE_NAME]'


run_list remove
=====================================================
.. include:: ../../includes_knife/includes_knife_node_run_list_remove.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_run_list_remove_syntax.rst

**Options**

|no_options|

**Examples**

For example, to remove a role from a run list, enter:

.. code-block:: bash

   $ knife node run_list remove node 'role[ROLE_NAME]'

To remove a recipe from a run list using the fully qualified format, enter:

.. code-block:: bash

   $ knife node run_list remove node 'recipe[COOKBOOK::RECIPE_NAME]'

show
=====================================================
.. include:: ../../includes_knife/includes_knife_node_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_show_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_node_show_options.rst

**Examples**

For example, to view all data for a node named "build", enter:

.. code-block:: bash

   $ knife node show build

to return:

.. code-block:: bash

   Node Name:   build
   Environment: _default
   FQDN:
   IP:
   Run List:
   Roles:
   Recipes:
   Platform:
   
To view the FQDN for a node named "i-12345678", enter:

.. code-block:: bash

   $ knife node show i-12345678 -a fqdn

to return:

.. code-block:: bash

   fqdn: ip-10-251-75-20.ec2.internal

To view the run list for a node named "dev", enter:

.. code-block:: bash

   $ knife node show dev -r

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife node show i-12345678 -F json

Other formats available include ``text``, ``yaml``, and ``pp``.

To show basic information about a node, truncated and nicely formatted:

.. code-block:: bash

   knife node show <node_name>

To show all information about a node, nicely formatted:

.. code-block:: bash

   knife node show -l <node_name>

To view node information in raw |json|, use the ``-l`` or ``--long`` option:

.. code-block:: bash

   knife node show -l -F json <node_name>

and/or:

.. code-block:: bash

   knife node show -l --format=json <node_name>

To list a single node attribute:

.. code-block:: bash

   knife node show <node_name> -a <attribute_name>

where ``<attribute_name>`` is something like kernel or platform. (This doesn't work for nested attributes like ``node[kernel][machine]`` because ``knife node show`` doesn't understand nested attributes.)
