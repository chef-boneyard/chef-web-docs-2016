.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|drbdadm| is the management tool for |drbd|. It can be used to obtain status information and to alter the state of the |drbd| cluster. For more information about |drbdadm|, see http://www.drbd.org/users-guide/re-drbdadm.html.

``/proc/drbd`` is a virtual file that displays real-time status information about all currently-configured |drbd| resources. Use the following command to view the contents of this virtual file:

.. code-block:: bash

   $ cat /proc/drbd

Use ``private-chef-ctl ha-status`` along with ``/proc/drbd`` to help evaluate the current state of the cluster. Follow the split-brain recovery procedures for |drbd| if the cluster becomes two unconnected pieces.