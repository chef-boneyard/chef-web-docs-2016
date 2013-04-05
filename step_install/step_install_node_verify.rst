.. This is an included how-to. 


Optional. After a bootstrap operation has finished, verify that the node is recognized by the |chef server|. Use one of the following |knife| subcommands:

#. To show only the node that was just bootstrapped, run the following command:

   .. code-block:: bash

      $ knife client show name_of_node
   
   where ``name_of_node`` is the name of the node that was just bootstrapped. The |chef server| will return something similar to:

   .. code-block:: bash
   
      admin:       false
      chef_type:   client
      json_class:  Chef::ApiClient
      name:        name_of_node
      public_key: 

#. To show the full list of nodes (and workstations) that are registered with the |chef server|, run the following command:

   .. code-block:: bash

      knife client list

   The |chef server| will return something similar to:

   .. code-block:: bash

       workstation
       workstation
       ...
       client
       name_of_node
       ...
       client
