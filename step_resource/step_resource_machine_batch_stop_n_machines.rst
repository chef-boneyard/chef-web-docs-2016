.. This is an included how-to. 

.. To stop multiple machines in-parallel:

.. code-block:: ruby

   machine_batch do
     action :stop
     machines 'a', 'b', 'c', 'd', 'e'
   end
