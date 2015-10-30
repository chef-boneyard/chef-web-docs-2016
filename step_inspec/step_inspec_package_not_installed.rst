.. This is an included how-to. 

.. To test that a package is not installed:

.. code-block:: ruby

   describe package('some_package') do
     it { should_not be_installed }
   end
