.. This is an included how-to. 

To transfer a file in a cookbook:

.. code-block:: ruby

   cookbook_file "/tmp/testfile" do # the destination path and file name on the node
     source "testfile" # the file name in the cookbook files/ directory
     mode 00644
   end
