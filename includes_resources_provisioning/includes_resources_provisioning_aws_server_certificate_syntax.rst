.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``server_certificate`` driver-specific resource is as follows:

.. code-block:: ruby

   server_certificate 'name' do
     certificate_body              String
     private_key                   String      
   end

where 

* ``server_certificate`` is the resource
* ``name`` is the name of the resource block
* ``certificate_body`` and ``private_key`` are properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   server_certificate 'name' do
     certificate_body 'file://public_key.pem'
     private_key 'file://private_key.pem'
   end
