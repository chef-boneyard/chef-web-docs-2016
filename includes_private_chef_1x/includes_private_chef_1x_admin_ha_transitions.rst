.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |keepalived| service manages the |vrrp| and cluster transitions. It should be running on both the primary and secondary servers. To transition from the primary to the secondary, simply run the following on the primary:

.. code-block:: bash

   $ private-chef-ctl keepalived stop

This will cause the current primary to:

#. Remove the virtual IP address.
#. Stop the services.
#. Unmount the |drbd| device.
#. Becoming secondary for the |drbd| device.

Meanwhile, the backup will be undergoing the same steps as listed above.