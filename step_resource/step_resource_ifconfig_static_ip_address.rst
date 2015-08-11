.. This is an included how-to. 

.. To specify a static IP address:

.. code-block:: ruby

   ifconfig "33.33.33.80" do
     device "eth1"
   end

will create the following interface:

.. code-block:: ruby

   iface eth1 inet static
     address 33.33.33.80
