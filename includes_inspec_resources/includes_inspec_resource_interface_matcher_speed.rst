.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``speed`` matcher tests the speed of the network interface, in MB/sec:

.. code-block:: ruby

   its('speed') { should eq 1000 }
