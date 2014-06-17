.. This is an included how-to. 

.. To start apache2:

.. code-block:: ruby
   
   service 'apache2' do
     action :start
   end
   
   container_service 'apache2' do
     command '/usr/sbin/apache2 -D FOREGROUND'
   end
