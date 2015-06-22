.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_key_pair`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_key_pair 'name' do
     private_key_options({
       :format => :pem,
       :type => :rsa,
       :regenerate_if_different => true
     })
     allow_overwrite true
   end

where 

* ``aws_key_pair`` is the resource
* ``name`` is the name of the resource block
* ``allow_overwrite``, and ``private_key_options`` are attributes of this resource, with example values shown. |see attributes|
