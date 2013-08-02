.. This is an included how-to. 


The |chef repo| on |github| must be cloned to every workstation that will interact with a |chef server|.

To clone the |chef repo|:

#. In a command window, enter the following:

   .. code-block:: bash

      $ git clone git://github.com/opscode/chef-repo.git

#. While the |chef repo| is being cloned on the local machine, the command window will show something like the following:

   .. code-block:: bash

      Cloning into 'chef-repo'...
      remote: Counting objects: 199, done.
      remote: Compressing objects: 100% (119/119), done.
      remote: Total 199 (delta 71), reused 160 (delta 47)
      Receiving objects: 100% (199/199), 30.45 KiB, done.
      Resolving deltas: 100% (71/71), done.

#. After the |chef repo| has been cloned, the following folder structure will be present on the local machine::

      chef-repo/
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/


