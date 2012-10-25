.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Two applications need to be deployed and run on a single node under the same domain and sub-domain. A |ruby on rails| application will reside as the main application at ``example.com`` and a |wordpress| application will reside at ``blog.example.com``. The domain is running |apache 2| as the web server. The domain is expected to grow, but for now only two run_list resources are created, with the appropriate roles added to them. At some point in the future, when a new sub-domain is required, a new run_list resource would also be created.

The virtual host on the |apache 2| server is only one per node, which can create challenges when a node requires updates. Using a definition helps get around this issue. For example, the ``web_app`` definition exists in the |opscode| |apache 2| cookbook, and can be used like this:

.. code-block:: ruby

   web_app "blog_site" do
     server_name "blog"
     server_aliases [ "blog.#{node['domain']}", node['fqdn'] ]
     docroot "/srv/www/blog_site"
   end

When |chef| processes a recipe that contains this definition, it will find the ``web_app`` resource and will attempt to recognize it as a resource. Assuming that the |opscode| |apache 2| cookbook is available, then the resources contained within that cookbook will be found and loaded, replacing the definition.