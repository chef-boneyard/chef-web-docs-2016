.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``count`` matcher tests the number of times the named user appears in ``/etc/passwd``:

.. code-block:: ruby

   its('count') { should eq 1 }
