.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A ``aws_server_certificate`` resource block manages server certificates in |amazon aws|. For example:

.. code-block:: ruby

   server_certificate 'name' do
     certificate_body 'file://public_key.pem'
     private_key 'file://private_key.pem'
   end

The full syntax for all of the properties that are available to the ``aws_server_certificate`` resource is:

.. code-block:: ruby

   aws_server_certificate 'name' do
     certificate_body              String
     private_key                   String      
   end

where 

* ``aws_server_certificate`` is the resource
* ``name`` is the name of the resource block
* ``certificate_body`` and ``private_key`` are properties of this resource, with the |ruby| type shown. |see attributes|
