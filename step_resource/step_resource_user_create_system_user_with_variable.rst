.. This is an included how-to. 

The following example shows how to create a system user using a variable called ``user_home`` where the matching nodes have a group identifier that is the same as the node, and the login shell is ``/bin/bash``:

.. code-block:: ruby

   user_home = "/#{node[:matching_node][:user]}"
   
   user 'node[:matching_node][:group]' do
     gid node[:matching_node][:group]
     shell '/bin/bash'
     home 'user_home'
     system true
     action :create
   end

where ``matching_node`` represents a type of node. For example, if the ``user_home`` variable specified ``{node[:nginx]...}``, a recipe might look something like this:

.. code-block:: ruby

   user_home = "/#{node[:nginx][:user]}"
   
   user 'node[:nginx][:group]' do
     gid node[:nginx][:group]
     shell '/bin/bash'
     home 'user_home'
     system true
     action :create
   end
