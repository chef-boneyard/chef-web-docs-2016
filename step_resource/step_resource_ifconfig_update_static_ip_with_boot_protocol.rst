.. This is an included how-to. 

.. To update a static IP address with a boot protocol*:

.. code-block:: ruby

   ifconfig "33.33.33.80" do
     bootproto "dhcp"
     device "eth1"
   end

will update the interface from ``static`` to ``dhcp``:

.. code-block:: ruby

   iface eth1 inet dhcp
     address 33.33.33.80
