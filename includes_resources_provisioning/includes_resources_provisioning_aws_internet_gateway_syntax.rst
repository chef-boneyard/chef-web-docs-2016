.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_internet_gateway`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_internet_gateway 'name' do
     internet_gateway_id           String
   end

where 

* ``aws_internet_gateway`` is the resource
* ``name`` is the name of the resource block and also the name of an internet gateway for a defined virtual network within |amazon vpc|
* ``internet_gateway_id`` is an attribute of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_internet_gateway 'name' do
     internet_gateway_id '1234567890'
   end
