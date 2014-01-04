.. This is an included how-to. 

.. To create and start a site that maps to the physical location ``C:\inetpub\wwwroot\testfu``:

.. code-block:: ruby

   iis_site 'Testfu Site' do
     protocol :http
     port 80
     path "#{node['iis']['docroot']}/testfu"
     action [:add,:start]
   end



