.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``shell`` matcher tests the path to the default shell for the user:

.. code-block:: ruby

   its('shell') { should eq '/bin/bash' }
