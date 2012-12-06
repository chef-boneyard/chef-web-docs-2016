.. This is an included how-to. 

.. To delete a link

.. code-block:: ruby

   link "/tmp/mylink" do
     action :delete
     only_if "test -L /tmp/mylink"
   end
