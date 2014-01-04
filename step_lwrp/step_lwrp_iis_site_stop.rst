.. This is an included how-to. 

.. To stop, then delete a default site:

.. code-block:: ruby

   iis_site 'Default Web Site' do
     action [:stop, :delete]
   end



