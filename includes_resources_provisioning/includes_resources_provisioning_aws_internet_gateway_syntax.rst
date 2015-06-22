.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_internet_gateway`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_internet_gateway 'name' do
     internet_gateway_id '1234567890'
   end

where 

* ``aws_internet_gateway`` is the resource
* ``name`` is the name of the resource block
* ``internet_gateway_id`` is an attribute of this resource, with example values shown. |see attributes|
