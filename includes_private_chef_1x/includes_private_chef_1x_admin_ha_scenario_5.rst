.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Sometimes |drbd| hedges its bets, and puts both nodes in a pair into Secondary mode. When this happens, you can look at the contents of ``/proc/drbd`` on both hosts and see if either of them is showing out of sync. If they are both ``oos:0``, just pick one and promote it to Primary with the above ``drbdadm primary pc0`` command. If one or both of the hosts is out of sync, choose the one with the lower amount of ``oos`` and promote it to Primary.

If the chosen node won’t promote, run the following commands on the other host to reset its disk state:

.. code-block:: bash

   $ drbdadm wipe-md pc0
   $ drbdadm create-md pc0

That will tell |drbd| to abandon what is on the node and start over, and should allow it to sync with the Primary.