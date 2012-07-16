.. This is an included file that describes a sub-command or argument in Knife.


The ``edit`` argument is used to edit role details on the |chef server|. 

This argument has the following syntax::

   knife role edit ROLE_NAME

This argument does not have any options.

For example, to edit the data for a role named "role1", enter:

.. code-block:: bash

   $ knife role edit role1
   
Update the role data in JSON:

.. code-block:: bash

   ## sample:
   {
      "name": "role1",
      "default_attributes": {
      },
      "json_class": "Chef::Role",
      "run_list": [
 
      ],
      "description": "This is the description for the role1 role.",
      "chef_type": "role",
      "override_attributes": {
      }
   }

When finished, save it.

