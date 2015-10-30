.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``mindays`` matcher tests the minimum number of days between password changes:

.. code-block:: ruby

   its('mindays') { should eq 0 }

where ``0`` represents the maximum number of days.
