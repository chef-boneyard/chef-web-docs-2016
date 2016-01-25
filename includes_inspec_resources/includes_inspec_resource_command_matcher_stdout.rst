.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``stdout`` matcher tests results of the command as returned in standard output (stdout):
In this example it is matching the output (stdout) using a RegEx

.. code-block:: ruby

   describe command('echo 1') do
      its('stdout') { should match (/[0-9]/) }
   end
   
