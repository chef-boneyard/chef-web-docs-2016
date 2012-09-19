.. This is an included how-to. 

To set a file mode:

.. code-block:: ruby

   file "/tmp/something" do
     mode "644"
   end
 
or:

.. code-block:: ruby

   file "/tmp/something" do
     mode 00644
   end

