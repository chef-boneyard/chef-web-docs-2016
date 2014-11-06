.. This is an included how-to. 

.. To converge multiple machines in-parallel:

.. code-block:: ruby

   machine_batch do
     action :converge
     machines 'a', 'b', 'c', 'd', 'e'
   end
