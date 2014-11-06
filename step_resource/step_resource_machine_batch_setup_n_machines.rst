.. This is an included how-to. 

.. To setup multiple machines in-parallel:

.. code-block:: ruby

   machine_batch do
     action :setup
     machines 'a', 'b', 'c', 'd', 'e'
   end
