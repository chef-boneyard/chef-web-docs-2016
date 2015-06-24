.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_instance`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_instance 'name' do
     instance_id                   'string'
   end

where 

* ``aws_instance`` is the resource
* ``name`` is the name of the resource block and also the name of an instance in |amazon ec2|
* ``instance_id`` is an attribute of this resource, with example value shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_instance 'name' do
     instance_id 'instance-1'
   end
