.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``interfaces`` matcher tests if the named interface is present:

.. code-block:: ruby

   its('interfaces') { should eq foo }
   its('interfaces') { should eq bar }
   its('interfaces') { should include foo, bar }
