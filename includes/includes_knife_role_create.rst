.. This is an included file that describes a sub-command or argument in Knife.


The ``create`` argument is used to add a role to the |chef server|. To add a role to a node, you must use the ``node`` sub-command and the ``run-list add`` argument. Role data is saved as JSON on the |chef server|.

This argument has the following syntax::

   knife role create ROLE_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-d DESCRIPTION``, ``--description DESCRIPTION``
     - |description role|

For example, to add a role named "role1", enter:

.. code-block:: bash

   $ knife role create role1
   
In the $EDITOR enter the role data in JSON:

.. code-block:: bash

   ## sample:
   {
      "name": "role1",
      "default_attributes": {
      },
      "json_class": "Chef::Role",
      "run_list": [
 
      ],
      "description": "",
      "chef_type": "role",
      "override_attributes": {
      }
   }

When finished, save it.
   
