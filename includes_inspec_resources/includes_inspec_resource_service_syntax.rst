.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``service`` |inspec resource| block declares the name of a service and then one (or more) matchers to test the state of the service:

.. code-block:: ruby

   describe service('service_name') do
     it { should be_installed }
     it { should be_enabled }
     it { should be_running }
   end

where

* ``('service_name')`` must specify a service name
* ``be_installed``, ``be_enabled``, and ``be_running`` are valid matchers for this |inspec resource|
