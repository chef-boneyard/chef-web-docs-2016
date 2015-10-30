.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``group`` matcher tests the group to which the user belongs:

.. code-block:: ruby

   its('group') { should eq 'root' }

where ``root`` represents the group.
