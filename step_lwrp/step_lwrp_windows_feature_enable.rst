.. This is an included how-to. 

To enable a node as a DHCP server:

.. code-block:: ruby

   windows_feature "DHCPServer" do
     action :install
   end

or to enable a node as TFTP:

.. code-block:: ruby

   windows_feature "TFTP" do
     action :install
   end



