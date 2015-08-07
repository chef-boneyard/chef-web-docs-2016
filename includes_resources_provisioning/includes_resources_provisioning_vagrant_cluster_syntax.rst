.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``vagrant_cluster`` driver-specific resource is as follows:

.. code-block:: ruby

   vagrant_cluster 'name' do
     path                    String
   end

where 

* ``vagrant_cluster`` is the resource
* ``name`` is the name of the resource block and also the name of an instance in |amazon ec2|
* ``path`` is a property of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   vagrant_cluster '/path/to/cluster' do
     action :delete
   end
