.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``value`` matcher tests the value assigned to the named IP address versus the value declared in the test:

.. code-block:: ruby

   its('value') { should eq 0 }
