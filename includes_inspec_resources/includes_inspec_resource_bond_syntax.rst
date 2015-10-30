.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``bond`` |inspec resource| block declares a bonded network interface, and then specifies the properties of that bonded network interface to be tested:

.. code-block:: ruby

   describe bond('name') do
     it { should exist }
   end

where

* ``'name'`` is the name of the bonded network interface
* ``{ should exist }`` is a valid matcher for this |inspec resource|
