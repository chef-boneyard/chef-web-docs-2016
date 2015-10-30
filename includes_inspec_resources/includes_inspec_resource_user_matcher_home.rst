.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``home`` matcher tests the home directory path for the user:

.. code-block:: ruby

   its('home') { should eq '/root' }
