.. This is an included how-to. 


.. To create multiple machines using a loop:

.. code-block:: ruby

   1.upto(10) do |i|
     machine "hadoop#{i}" do
       recipe 'hadoop'
     end
   end
