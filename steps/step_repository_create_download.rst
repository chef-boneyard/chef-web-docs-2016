.. This is an included how-to. 


Instead of cloning the |chef| repository from |github|, a |tar gz| file can be downloaded from |github| directly (http://github.com/opscode/chef-repo/tarball/master) or through the command shell using |gnu wget| (or a similar application).

To download the |chef| repository:

1. Run the following command:

   .. code-block:: bash

      $ wget http://github.com/opscode/chef-repo/tarball/master
2. Extract the |tar gz| file into a directory. For example:

   .. code-block:: bash

      $ tar -zxf master
3. Move the extracted file to the |chef| repository. For example:

   .. code-block:: bash

      $ mv opscode-chef-repo-a3bec38 chef-repo
