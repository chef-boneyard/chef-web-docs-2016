.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_image`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_image 'name' do
     image_id                      String
   end

where 

* ``aws_image`` is the resource
* ``name`` is the name of the resource block and also the name of an |amazon ami| image
* ``image_id`` is a property of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_image 'name' do
     image_id 'image-1'
   end
