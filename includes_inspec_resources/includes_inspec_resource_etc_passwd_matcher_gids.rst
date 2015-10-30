.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``gids`` matcher tests if the group indentifiers in the test match group identifiers in ``/etc/passwd``:

.. code-block:: ruby

   its('gids') { should eq 1234 }
