.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``file`` |inspec resource| block declares the location of the file type to be tested, what type that file should be (if required), and then one (or more) matchers:

.. code-block:: ruby

   describe file('path') do
     it { should MATCHER 'value' }
   end

where

* ``('path')`` is the name of the file and/or the path to the file
* ``MATCHER`` is a valid matcher for this |inspec resource|
* ``'value'`` is the value to be tested
