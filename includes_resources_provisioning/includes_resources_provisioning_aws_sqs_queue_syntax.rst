.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_sqs_queue`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_sqs_queue 'name' do
     options                       Hash
   end

where 

* ``aws_sqs_queue`` is the resource
* ``name`` is the name of the resource block and also the name of a queue in |amazon sqs|
* ``options`` is an attribute of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_sqs_queue 'name' do
     options({ :delay_seconds => 1 })
   end
