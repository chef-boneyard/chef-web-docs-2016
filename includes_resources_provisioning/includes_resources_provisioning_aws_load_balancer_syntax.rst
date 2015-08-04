.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_load_balancer`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_load_balancer 'name' do
     load_balancer_id              String
   end

where 

* ``aws_load_balancer`` is the resource
* ``name`` is the name of the resource block and also the name of a load balancer in |amazon elb|
* ``load_balancer_id`` is an properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_load_balancer 'name' do
     load_balancer_id 'lb-1'
   end
