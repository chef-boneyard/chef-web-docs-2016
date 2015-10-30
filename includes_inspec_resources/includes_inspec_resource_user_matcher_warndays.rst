.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``warndays`` matcher tests the number of days a user is warned before a password must be changed:

.. code-block:: ruby

   its('warndays') { should eq 5 }

where ``5`` represents the number of days a user is warned.
