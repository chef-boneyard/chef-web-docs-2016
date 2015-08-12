.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

Cannot connect to |postgresql| on the remote server.

**Possible Causes**

* |postgresql| is not running on the remote server
* The port used by |postgresql| is blocked by a firewall on the remote server
* Network routing configuration is preventing access to the host
* When using |amazon aws|, rules for security groups are preventing the |chef server| from communicating with |postgresql|
