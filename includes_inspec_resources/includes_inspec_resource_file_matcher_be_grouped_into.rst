.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_grouped_into`` matcher tests if the file exists as part of the named group:

.. code-block:: ruby

   it { should be_grouped_into 'group' }
