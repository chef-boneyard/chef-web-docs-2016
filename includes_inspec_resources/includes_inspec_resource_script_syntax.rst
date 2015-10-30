.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``script`` |inspec resource| block declares a script to be tested, and then a command that should be part of that script:

.. code-block:: ruby

   describe script do
     its('script_name') { should include 'command' }
   end
