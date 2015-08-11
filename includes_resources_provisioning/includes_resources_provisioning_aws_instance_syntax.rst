.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A ``aws_instance`` resource block manages |amazon aws| images. For example:

.. code-block:: ruby

   aws_instance 'name' do
     instance_id 'instance-1'
   end

The full syntax for all of the properties that are available to the ``aws_instance`` resource is:

.. code-block:: ruby

   aws_instance 'name' do
     instance_id                   String
   end

where 

* ``aws_instance`` is the resource
* ``name`` is the name of the resource block and also the name of an instance in |amazon ec2|
* ``instance_id`` is a property of this resource, with the |ruby| type shown. |see attributes|
