.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_instance`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_instance 'name' do
     instance_id                   String
   end

where 

* ``aws_instance`` is the resource
* ``name`` is the name of the resource block and also the name of an instance in |amazon ec2|
* ``instance_id`` is a property of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_instance 'name' do
     instance_id 'instance-1'
   end
