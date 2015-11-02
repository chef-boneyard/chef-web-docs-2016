.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``stdout`` matcher tests results of the command as returned in standard output (stdout):

.. code-block:: ruby

   its('stdout') { should eq '/^1$/' }
