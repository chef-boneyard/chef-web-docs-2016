.. This is an included how-to. 

.. To test if a module is loaded:

.. code-block:: ruby

   describe kernel_module('bridge') do
     it { should be_loaded }
   end
