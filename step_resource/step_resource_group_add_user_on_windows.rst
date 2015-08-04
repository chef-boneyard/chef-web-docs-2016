.. This is an included how-to. 

.. To add a group on the Windows platform:

.. code-block:: ruby

   group 'Administrators' do
     members ['domain\foo']
     append true
     action :modify
   end
