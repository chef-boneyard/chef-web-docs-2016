.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``groups`` matcher tests all groups for the named user:

.. code-block:: ruby

     its('groups') { should include 'my_group' }
