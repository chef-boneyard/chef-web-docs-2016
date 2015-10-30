.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``username`` matcher tests if the user name in the test matches a user name in ``/etc/passwd``:

.. code-block:: ruby

   its('username') { should eq 'root' }
