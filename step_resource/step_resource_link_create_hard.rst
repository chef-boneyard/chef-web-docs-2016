.. This is an included how-to. 

.. To create a hard link:

.. code-block:: ruby

   link "/tmp/passwd" do
     to "/etc/passwd"
     link_type :hard
   end
