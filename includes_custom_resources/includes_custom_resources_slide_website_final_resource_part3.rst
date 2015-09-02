.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck
.. If changes are made to this file, also update includes_custom_resources_website_final_resource


.. code-block:: ruby

   # continued from previous slide
   
     directory "/var/www/vhosts/#{instance_name}" do
       recursive true
       owner 'root'
       group 'root'
       mode '0755'
       action :create
     end
   
     service "httpd-#{instance_name}" do
       action [:enable, :start]
     end
       
   end
