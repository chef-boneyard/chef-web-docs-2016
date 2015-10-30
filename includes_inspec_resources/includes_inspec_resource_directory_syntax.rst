.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``directory`` |inspec resource| block declares the location of the directory to be tested, and then one (or more) matchers:

.. code-block:: ruby

   describe directory('path') do
     it { should MATCHER 'value' }
   end
