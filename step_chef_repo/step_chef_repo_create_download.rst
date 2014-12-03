.. This is an included how-to. 


Instead of cloning the |chef repo| from |github|, a |tar gz| file can be downloaded from |github| directly (http://github.com/opscode/chef-repo/tarball/master) or through the command shell using |gnu wget| (or a similar application).

To download the |chef repo|:

#. Run the following command:

   .. code-block:: bash

      $ wget http://github.com/opscode/chef-repo/tarball/master

#. Extract the |tar gz| file into a directory. For example:

   .. code-block:: bash

      $ tar -zxf master

#. Move the extracted file to the |chef repo|. For example:

   .. code-block:: bash

      $ mv opscode-chef-repo-a3bec38 chef-repo
