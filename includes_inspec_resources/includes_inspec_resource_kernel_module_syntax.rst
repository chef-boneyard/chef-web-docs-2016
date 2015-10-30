.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``kernel_module`` |inspec resource| block declares a module name, and then tests if that module is a loadable kernel module:

.. code-block:: ruby

   describe kernel_module('module_name') do
     it { should be_loaded }
   end

where

* ``'module_name'`` must specify a kernel module, such as ``'bridge'``
* ``{ should be_loaded }`` tests if the module is a loadable kernel module
