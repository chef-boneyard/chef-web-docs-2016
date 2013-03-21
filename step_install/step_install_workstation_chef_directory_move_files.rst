.. This is an included how-to. 


The |knife rb|, |organization pem|, and |user pem| files must be moved to the |chef repo hidden| directory after they are downloaded from the |chef server|.

To move files to the |chef repo hidden| directory:

#. In a command window, enter each of the following:

   .. code-block:: bash

      cp /path/to/knife.rb ~/chef-repo/.chef

   and:

   .. code-block:: bash

      cp /path/to/ORGANIZATION-validator.pem ~/chef-repo/.chef

   and

   .. code-block:: bash

      cp /path/to/USERNAME.pem ~/chef-repo/.chef

   where ``/path/to/`` represents the path to the location in which these three files were placed after they were downloaded.

#. Verify that the files are in the |chef repo hidden| folder.

