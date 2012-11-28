.. This is an included how-to. 


xxxxx

To xxxxx:

1. xxxxx.
2. xxxxx.


A |chef| workstation is installed correctly when it is able to use |knife| to communicate with the |chef server|.

To verify that a workstation can connect to the |chef server|:

1. In a command window, navigate to the |chef repo|:

   .. code-block:: bash

      cd ~/chef-repo

2. In a command window, enter the following:

   .. code-block:: bash

      knife client list

   to return a list of clients (registered nodes and workstations) that have access to the |chef server|. For example:

   .. code-block:: bash

       workstation
       registered_node
