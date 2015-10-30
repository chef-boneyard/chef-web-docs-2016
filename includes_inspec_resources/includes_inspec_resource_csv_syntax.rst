.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``csv`` |inspec resource| block declares the configuration data to be tested:

.. code-block:: ruby

   describe csv('file') do
     its('name') { should eq 'foo' }
   end

where

* ``'file'`` is the path to a |csv| file
* ``name`` is a configuration setting in a |csv| file
* ``should eq 'foo'`` tests a value of ``name`` as read from a |csv| file versus the value declared in the test
