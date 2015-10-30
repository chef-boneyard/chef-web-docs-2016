.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``owner`` matcher tests if the owner of the file matches the specified value:

.. code-block:: ruby

   its('owner') { should eq 'root' }
