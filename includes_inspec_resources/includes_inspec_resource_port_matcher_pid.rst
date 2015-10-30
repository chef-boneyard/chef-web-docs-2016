.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``pid`` matcher tests the process identifier (PID):

.. code-block:: ruby

   its('pid') { should eq '27808' }
