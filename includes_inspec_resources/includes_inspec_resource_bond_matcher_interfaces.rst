.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``interfaces`` matcher tests if the named secondary interfaces are available:

.. code-block:: ruby

   its('interfaces') { should eq ['eth0', 'eth1', ...] }
