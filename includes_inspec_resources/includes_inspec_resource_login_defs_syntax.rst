.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``login_defs`` |inspec resource| block declares the ``login.defs`` configuration data to be tested:

.. code-block:: ruby

   describe login_defs do
     its('name') { should include('foo') }
   end

where

* ``name`` is a configuration setting in ``login.defs``
* ``{ should include('foo') }`` tests the value of ``name`` as read from ``login.defs`` versus the value declared in the test
