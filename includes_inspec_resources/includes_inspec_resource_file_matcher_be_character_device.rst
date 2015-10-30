.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_character_device`` matcher tests if the file exists as a character device (that corresponds to a block device), such as ``/dev/rdisk0`` or ``/dev/rdisk0s9``:

.. code-block:: ruby

   it { should be_character_device }
