.. This is an included how-to. 

To create and start a site that maps to the ``testfu.opscode.com`` domain:

.. code-block:: ruby

   iis_site 'Testfu Site' do
     protocol :http
     port 80
     path "#{node['iis']['docroot']}/testfu"
     host_header "testfu.opscode.com"
     action [:add,:start]
   end



