.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Resize |drbd| on the current primary backend to extend the size of the |drbd| device. Run the following command:

.. code-block:: bash

   sudo drbdadm resize pc0

The size of the ``/dev/drbd0`` backing device's mountpoint should grow. This change may take some time to complete, as |drbd| may want to synchronize the changes across the network, even though they are empty blocks.
