.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``network_acl`` driver-specific resource is as follows:

.. code-block:: ruby

   network_acl 'name' do
     inbound_rules                 Array, Hash
     network_acl_id                String
     outbound_rules                Array, Hash
     vpc                           String, AwsVpc, AWS::EC2::VPC     
   end

where 

* ``network_acl`` is the resource
* ``name`` is the name of the resource block
* ``inbound_rules``, ``network_acl_id``, ``outbound_rules``, and ``vpc`` are properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   network_acl 'name' do
     vpc 'ref-vpc'
     inbound_rules '0.0.0.0/0' => [ 22, 80 ]
     outbound_rules [
       {:port => 22..22, :protocol => :tcp, :destinations => ['0.0.0.0/0'] }
     ]
     aws_tags :chef_type => 'aws_security_group'
   end
