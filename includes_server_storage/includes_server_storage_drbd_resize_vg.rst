.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Resize the volume group on both backend systems. Run the following commands and replace ``sdb1`` for the correct device name:

.. code-block:: bash

   pvcreate /dev/sdb1

and then:

.. code-block:: bash

   vgextend opscode /dev/sdb1
