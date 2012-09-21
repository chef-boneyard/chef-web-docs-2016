.. This is an included how-to. 

To upload an environment to the |chef server|:


1. Verify the environment data:

   .. code-block:: ruby

      xxxxx

2. Run the following command:

   .. code-block:: bash

      $ knife environment from file environment/environment.rb
   
   where ``environment`` is the name of the file that will be uploaded.
