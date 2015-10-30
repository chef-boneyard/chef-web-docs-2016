.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_linked_to`` matcher tests if the file is linked to the named target:

.. code-block:: ruby

   it { should be_linked_to '/etc/target-file' }
