.. This is an included how-to. 

.. To create a file:

.. code-block:: ruby

   file "/tmp/something" do
     owner "root"
     group "root"
     mode 00755
     action :create
   end
