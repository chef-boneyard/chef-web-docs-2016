.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``script_name`` matcher tests the named script against the value specified by the test:

.. code-block:: ruby

   its('script_name') { should include 'Part-Of -Script' }
