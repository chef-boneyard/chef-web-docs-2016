.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``kernel_parameter`` |inspec resource| block declares a parameter and then a value to be tested:

.. code-block:: ruby

   describe kernel_parameter('path.to.parameter') do
     its('value') { should eq 0 }
   end

where

* ``'path.to.parameter'`` must specify a kernel parameter, such as ``'net.ipv4.conf.all.forwarding'``
* ``{ should eq 0 }`` states the value to be tested
