.. This is an included how-to. 


To audit attribute values in a ``control`` block, first assign the attribute as a variable, and then use the variable within the ``control`` block to specify the test:

.. code-block:: ruby

   memory_mb = node['memory']['total'].gsub(/kB$/i, '').to_i / 1024
   control 'minimum memory check' do
     it 'should be at least 400MB free' do
       expect(memory_mb).to be >= 400
     end
   end
