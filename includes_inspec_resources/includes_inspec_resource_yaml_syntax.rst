.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``yaml`` |inspec resource| block declares the configuration data to be tested:

.. code-block:: ruby

   describe yaml do
     its('name') { should eq 'foo' }
   end

where

* ``name`` is a configuration setting in a |yaml| file
* ``should eq 'foo'`` tests a value of ``name`` as read from a |yaml| file versus the value declared in the test
