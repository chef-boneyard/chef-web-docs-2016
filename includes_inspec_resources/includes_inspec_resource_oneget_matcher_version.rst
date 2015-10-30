.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``version`` matcher tests if the named package version is on the system:

.. code-block:: ruby

   its('version') { should eq '1.2.3' }
