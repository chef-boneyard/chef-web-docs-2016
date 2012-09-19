.. This is an included how-to. 

To create a symbolic link:

.. code-block:: ruby

   # ln -s /etc/passwd /tmp/passwd
   link "/tmp/passwd" do
     to "/etc/passwd"
   end
