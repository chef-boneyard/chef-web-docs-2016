.. This is an included how-to. 

.. To test if the list length for the mysqld process is 1:

.. code-block:: ruby

   describe processes('mysqld') do
     its('list.length') { should eq 1 }
   end
