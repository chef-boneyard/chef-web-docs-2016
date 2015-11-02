.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |inspec resource| matches any keyword that is listed in the ``auditd.conf`` configuration file:

.. code-block:: ruby

   its('log_format') { should eq 'raw' }
