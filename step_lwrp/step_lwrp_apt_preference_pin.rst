.. This is an included how-to. 

.. To pin ``libmysqlclient16`` to version ``5.1.49-3``:

.. code-block:: ruby

   apt_preference "libmysqlclient16" do
     pin "version 5.1.49-3"
     pin_priority "700"
   end





