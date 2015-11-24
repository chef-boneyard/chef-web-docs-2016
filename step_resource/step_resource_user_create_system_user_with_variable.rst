.. This is an included how-to.

The following example shows how to create a system user. In this instance, the home value is calculated and stored in a variable called ``user_home`` that is used to set the user's attribute for home.

.. code-block:: ruby

   user_home = "/home/#{node['cookbook_name']['user']}"

   user node['cookbook_name']['user'] do
     gid node['cookbook_name']['group']
     shell '/bin/bash'
     home user_home
     system true
     action :create
   end
