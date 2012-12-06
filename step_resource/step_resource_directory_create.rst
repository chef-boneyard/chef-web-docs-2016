.. This is an included how-to. 

.. To create a directory:

.. code-block:: ruby

   directory "/tmp/something" do
     owner "root"
     group "root"
     mode 00755
     action :create
   end
