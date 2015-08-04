.. This is an included how-to. 

.. To enable a service after restarting or reloading it:

.. code-block:: ruby
 
   service 'apache' do
     supports :restart => true, :reload => true
     action :enable
   end
