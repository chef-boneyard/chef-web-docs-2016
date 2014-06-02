.. This is an included how-to. 

.. To start apachectl:

.. code-block:: ruby

   require 'chef/container'
   
   service 'apache2' do
     action :start
   end
   
   container_service 'apache2' do
     command 'apachectl -k start'
   end
