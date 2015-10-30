.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``groups`` matcher tests two (or more) groups to which the user belongs:

.. code-block:: ruby

   its('groups') { should eq ['root', 'other']}
