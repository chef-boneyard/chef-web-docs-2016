.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For example, the ``httpd.rb`` file in the ``website`` cookbook could be assigned a custom resource name like this:

.. code-block:: ruby

   resource_name :httpd

   property :homepage, String, default: '<h1>Hello world!</h1>'

   load_current_value do
     if ::File.exist?('/var/www/html/index.html')
       homepage IO.read('/var/www/html/index.html')
     end
   end

   action :create do
     package 'httpd'

     service 'httpd' do
       action [:enable, :start]
     end

     file '/var/www/html/index.html' do
       content homepage
     end
   end

and is then usable in a recipe like this:

.. code-block:: ruby

   httpd 'build website' do
     homepage '<h1>Welcome to the Example Co. website!</h1>'
     action :create
   end
