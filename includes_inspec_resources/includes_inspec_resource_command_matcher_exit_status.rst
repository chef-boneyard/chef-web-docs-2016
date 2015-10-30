.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``exit_status`` matcher tests the exit status for the command:

.. code-block:: ruby

   its('exit_status') { should eq 123 }
