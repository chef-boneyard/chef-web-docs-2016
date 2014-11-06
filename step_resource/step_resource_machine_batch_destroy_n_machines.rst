.. This is an included how-to. 

.. To delete multiple machines in-parallel:

.. code-block:: ruby

   machine_batch do
     action :delete
     machines 'a', 'b', 'c', 'd', 'e'
   end
