.. This is an included how-to. 

The following example will create a hard link from ``/tmp/passwd`` to ``/etc/passwd``:

.. code-block:: ruby

   link "/tmp/passwd" do
     to "/etc/passwd"
     link_type :hard
   end
