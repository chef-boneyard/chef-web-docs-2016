.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_network_interface`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_network_interface 'name' do
     machine 'ref-machine-eni-1'
     device_index 2
     subnet 'ref-subnet-eni'
     security_groups ['ref-sg1-eni']
     description 'ref-eni-desc'
   end

where 

* ``aws_network_interface`` is the resource
* ``name`` is the name of the resource block
* ``description``, ``device_index``, ``machine``, ``security_groups``, and ``subnet`` are attributes of this resource, with example values shown. |see attributes|
