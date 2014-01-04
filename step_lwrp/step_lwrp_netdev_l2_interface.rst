.. This is an included how-to. 

.. To use the ``netdev_l2_interface`` lightweight resource:

.. code-block:: ruby

   netdev_l2_interface "ge-0/0/0" do
     description "description"
     tagged_vlans %w{ foobar }
     vlan_tagging true
     action :create
   end
