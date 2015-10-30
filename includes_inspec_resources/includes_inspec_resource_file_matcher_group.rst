.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``group`` matcher tests if the group to which a file belongs matches the specified value:

.. code-block:: ruby

   its('group') { should eq 'admins' }
