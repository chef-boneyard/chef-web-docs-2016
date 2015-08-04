.. This is an included how-to. 

.. To reload a service:

.. code-block:: ruby

   template '/tmp/somefile' do
     mode '0644'
     source 'somefile.erb'
     notifies :reload, 'service[apache]', :immediately
   end
