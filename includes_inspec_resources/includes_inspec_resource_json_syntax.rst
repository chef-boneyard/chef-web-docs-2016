.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``json`` |inspec resource| block declares the data to be tested:

.. code-block:: ruby

   describe json do
     its('name') { should eq 'foo' }
   end

where

* ``name`` is a configuration setting in a |json| file
* ``should eq 'foo'`` tests a value of ``name`` as read from a |json| file versus the value declared in the test
