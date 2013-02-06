.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. warning:: The entire contents of ``/etc/opscode`` must be copied from the backend master to all of the other members of the cluster. There may be new configuration state generated as a result of bootstrapping the first member of the cluster which must agree on all cluster members.

The entire contents of ``/etc/opscode`` on the backend master must now be copied to the other cluster members. The easiest way to accomplish this is to have ssh root trust and logins setup between all the cluster members and to copy the contents around from the backend master. In a cluster with backed master named be1, backend slave named be2, and front end servers fe1 and fe2 this might look like:

.. code-block:: bash

   be1# scp /etc/opscode/* fe1:/etc/opscode
   be1# scp /etc/opscode/* fe2:/etc/opscode
   be1# scp /etc/opscode/* be2:/etc/opscode

The details of how to accomplish shipping this data between servers will vary from site to site, please use whatever ``scp`` and ``rsync`` tools you have available.

For example, a particularly simple method is to configure SSH agent forwarding on your workstation. A successful authentication and login of the user from the workstation to be1 can be passed through from be1 to the other members of the cluster, just by initiating a connection to them from be1.