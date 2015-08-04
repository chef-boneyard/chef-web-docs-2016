.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_security_group`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_security_group 'name' do
     aws_tags                      Hash
     description                   String
     inbound_rules                 Hash, Array
     outbound_rules                Hash, Array
     security_group_id             String
     vpc                           String
   end

where 

* ``aws_security_group`` is the resource
* ``name`` is the name of the resource block and also the name of a security group in |amazon aws|
* ``inbound_rules``, ``outbound_rules``, and ``vpc`` are properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_security_group 'name' do
     vpc 'ref-vpc'
     inbound_rules '0.0.0.0/0' => [ 22, 80 ]
     outbound_rules [
       {:port => 22..22, :protocol => :tcp, :destinations => ['0.0.0.0/0'] }
     ]
     aws_tags :chef_type => 'aws_security_group'
   end
