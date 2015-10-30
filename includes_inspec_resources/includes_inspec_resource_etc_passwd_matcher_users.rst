.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``users`` matcher tests if the user in the test matches a user in ``/etc/passwd``

.. code-block:: ruby

   its('users') { should eq 'root' }
