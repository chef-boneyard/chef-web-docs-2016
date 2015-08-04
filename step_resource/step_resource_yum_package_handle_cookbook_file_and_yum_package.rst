.. This is an included how-to. 

.. To handle cookbook_file and yum_package when both called in the same recipe

When a |resource cookbook_file| resource and a |resource yum_package| resource are both called from within the same recipe, use the ``flush_cache`` attribute to dump the in-memory |yum| cache, and then use the repository immediately to ensure that the correct package is installed:

.. code-block:: ruby

   cookbook_file '/etc/yum.repos.d/custom.repo' do
     source 'custom'
     mode '0644'
   end
   
   yum_package 'only-in-custom-repo' do
     action :install
     flush_cache [ :before ]
   end
