.. This is an included how-to. 


To edit the data for a role named "role1", enter:

.. code-block:: bash

   $ knife role edit role1
   
Update the role data in |json|:

.. code-block:: javascript

   ## sample:
   {
      "name": "role1",
      "default_attributes": {
      },
      "json_class": "Chef::Role",
      "run_list": ['recipe[cookbook_name::recipe_name],
                    role[role_name]'
      ],
      "description": "This is the description for the role1 role.",
      "chef_type": "role",
      "override_attributes": {
      }
   }

When finished, save it.
