.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``uids`` matcher tests if the user indentifiers in the test match user identifiers in ``/etc/passwd``:

.. code-block:: ruby

   its('uids') { should eq ['1234', '1235'] }
