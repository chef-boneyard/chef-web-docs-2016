.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``mode`` matcher tests if the mode assigned to the file matches the specified value:

.. code-block:: ruby

   its('mode') { should eq 0644 }
