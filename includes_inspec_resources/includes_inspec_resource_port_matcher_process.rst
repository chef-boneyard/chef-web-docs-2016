.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``process`` matcher tests if the named process is running on the system:

.. code-block:: ruby

   its('process') { should eq 'syslog' }
