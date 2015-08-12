.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

One (or more) of the |postgresql| databases already exists.

**Possible Causes**

* The ``opscode_chef``, ``oc_id``, and/or ``bifrost`` databases already exist on the remote machine
* |postgresql| was configured manually

**Resolution**

* Verify that the ``opscode_chef``, ``oc_id``, and/or ``bifrost`` databases exist, and then verify that they are not being used by another internal application
* Back up the |postgresql| data, remove the existing databases, and reconfigure |postgresql| and the |chef server|
