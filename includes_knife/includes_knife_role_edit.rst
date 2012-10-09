.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``edit`` argument is used to edit role details on the |chef server|. 

This argument has the following syntax::

   knife role edit ROLE_NAME

This argument does not have any argument-specific options.

For example, to edit the data for a role named "role1", enter:

.. code-block:: bash

   $ knife role edit role1
   
Update the role data in JSON:

.. code-block:: javascript

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

