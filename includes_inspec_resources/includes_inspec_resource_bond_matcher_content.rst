.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``content`` matcher tests if contents in the file that defines the bonded network interface match the value specified in the test. The values of the ``content`` matcher are arbitrary:

.. code-block:: ruby

   its('content') { should match('value') }
