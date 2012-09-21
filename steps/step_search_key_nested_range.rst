.. This is an included how-to. 

To use a range search to find IP addresses within a subnet, enter the following:

.. code-block:: bash

   $ knife search node 'network_interfaces_X_addresses:[192.168.0.* TO 192.168.127.*]'
   
where ``192.168.0.* TO 192.168.127.*`` defines the subnet range.
