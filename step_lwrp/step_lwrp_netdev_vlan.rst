.. This is an included how-to. 

To use the ``netdev_vlan`` lightweight resource:

.. code-block:: ruby

   netdev_vlan "name" do
     vlan_id 2
     description "description"
     action :create
   end
