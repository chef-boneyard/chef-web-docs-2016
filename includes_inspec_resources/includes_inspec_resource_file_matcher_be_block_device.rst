.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_block_device`` matcher tests if the file exists as a block device, such as ``/dev/disk0`` or ``/dev/disk0s9``:

.. code-block:: ruby

   it { should be_block_device }
