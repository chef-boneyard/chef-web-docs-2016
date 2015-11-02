.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |inspec resource| matches any service that is listed in the |apache| configuration file:

.. code-block:: ruby

   its('PidFile') { should_not eq '/var/run/httpd.pid' }

or:

.. code-block:: ruby

   its('Timeout') { should eq 300 }

For example:

.. code-block:: ruby

   describe apache_conf do
     its('MaxClients') { should eq 100 }
     its('Listen') { should eq '443'}
   end
