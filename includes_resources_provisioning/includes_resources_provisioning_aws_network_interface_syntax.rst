.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_network_interface`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_network_interface 'name' do
     description                   'string'
     device_index                  integer
     machine                       'string', false
     network_interface_id          'string'
     private_ip_address            'string'
     subnet                        'string'
     security_groups               [ array ]
   end

where 

* ``aws_network_interface`` is the resource
* ``name`` is the name of the resource block and also the name of a network interface in |amazon ec2|
* ``description``, ``device_index``, ``machine``, ``security_groups``, and ``subnet`` are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_network_interface 'name' do
     machine 'ref-machine-eni-1'
     device_index 2
     subnet 'ref-subnet-eni'
     security_groups ['ref-sg1-eni']
     description 'ref-eni-desc'
   end
