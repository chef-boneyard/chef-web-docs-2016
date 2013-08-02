.. This is an included how-to. 


A workstation is installed correctly when it is able to use |knife| to communicate with the |chef server|.

To verify that a workstation can connect to the |chef server|:

#. In a command window, navigate to the |chef repo|:

   .. code-block:: bash

      cd ~/chef-repo

#. In a command window, enter the following:

   .. code-block:: bash

      knife client list

   to return a list of clients (registered nodes and workstations) that have access to the |chef server|. For example:

   .. code-block:: bash

       workstation
       registered_node
