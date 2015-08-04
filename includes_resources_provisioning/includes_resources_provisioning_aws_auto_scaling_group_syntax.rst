.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_auto_scaling_group`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_auto_scaling_group 'name' do
     availability_zones            Array
     desired_capacity              Integer
     min_size                      Integer
     max_size                      Integer
     launch_configuration          String
     load_balancers                Array
     options                       Hash
   end

where 

* ``aws_auto_scaling_group`` is the resource
* ``name`` is the name of the resource block and also the name of the auto scaling group in |amazon ec2|
* ``availability_zones``, ``desired_capacity``, ``max_size``, ``min_size``, ``launch_configuration``, ``load_balancers``, and ``options`` are properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_auto_scaling_group 'name' do
     availability_zones ['us-west-1a']
     desired_capacity 2
     min_size 1
     max_size 3
     launch_configuration 'ref-launch-configuration'
     load_balancers 'ref-load-balancer'
     options subnets: 'ref-subnet'
   end
