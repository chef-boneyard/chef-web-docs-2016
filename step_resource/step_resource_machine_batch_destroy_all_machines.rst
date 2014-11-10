.. This is an included how-to. 

.. To delete multiple machines in-parallel:

.. code-block:: ruby

   machine_batch do
     machines search(:node, '*:*').map { |n| n.name }
     action :destroy
   end
