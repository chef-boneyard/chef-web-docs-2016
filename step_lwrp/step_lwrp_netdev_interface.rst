.. This is an included how-to. 

To use the ``netdev_interface`` lightweight resource:

.. code-block:: ruby

   netdev_interface "ge-0/0/0" do
     description "description"
     speed "1g"
     duplex "full"
     action :create
   end
