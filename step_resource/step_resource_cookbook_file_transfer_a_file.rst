.. This is an included how-to. 

.. To transfer a file in a cookbook:

.. code-block:: ruby

   cookbook_file "/tmp/testfile" do
     source "testfile"
     mode "0644"
   end
