.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

The value of ``postgresql['external']`` has been changed. 

**Possible Causes**

* This setting may not be changed after the |postgresql| remote instance is configured

.. warning:: Upgrading is not supported at this time.

**Resolution**

* Back up the data using ``knife ec backup``, create a new backend instance, and then restore the data
* Re-point front end machines at the new backend instance **or** assign the new backend instance the name/VIP of the old backend instance (including certificates, keys, and so on)
