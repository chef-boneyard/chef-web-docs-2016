.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``stderr`` matcher tests results of the command as returned in standard error (stderr):

.. code-block:: ruby

   its('stderr') { should eq 'error' }
