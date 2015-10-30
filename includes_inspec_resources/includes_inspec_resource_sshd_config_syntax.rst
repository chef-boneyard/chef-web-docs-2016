.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``sshd_config`` |inspec resource| block declares the client |open ssh| configuration data to be tested:

.. code-block:: ruby

   describe sshd_config('path') do
     its('name') { should include('foo') }
   end

where

* ``name`` is a configuration setting in ``sshd_config``
* ``('path')`` is the non-default ``/path/to/sshd_config``
* ``{ should include('foo') }`` tests the value of ``name`` as read from ``sshd_config`` versus the value declared in the test
