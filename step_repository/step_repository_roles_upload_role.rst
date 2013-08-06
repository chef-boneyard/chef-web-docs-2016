.. This is an included how-to. 

To upload a role to the |chef server|:


1. Verify the role data:

   .. code-block:: ruby

      name "base_example"
         description "Example base role applied to all nodes."
         # List of recipes and roles to apply.
         #run_list()
         # Attributes applied if the node doesn't have it set already.
         #default_attributes()
         # Attributes applied no matter what the node has set already.
         #override_attributes()

2. Run the following command:

   .. code-block:: bash

      $ knife role from file roles/base_example.rb
   
   where ``base_example`` is the name of the file that will be uploaded.
