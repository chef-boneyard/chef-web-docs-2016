.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``uid`` matcher tests if the user identifier in the test matches a user identifier in ``/etc/passwd``:

.. code-block:: ruby

   its('uid') { should eq 1234 }
