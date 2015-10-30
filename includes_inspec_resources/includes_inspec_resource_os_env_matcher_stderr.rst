.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``stderr`` matcher tests environment variables after they are output to stderr:

.. code-block:: ruby

   its('stderr') { should include('PWD=/root') }
