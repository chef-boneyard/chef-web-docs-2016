.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``ipaddress`` matcher tests if a host name is resolvable to a specific IP address:

.. code-block:: ruby

     its('ipaddress') { should include '93.184.216.34' }
