.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

For security purposes the |chef compliance| setup wizard has an hour timeout.

**Resolution**

#. Login using |ssh| to access the |chef compliance| instance.

   .. code-block:: bash

      $ ssh -i /path/to/ssh_key.pem <user>@<instance IP address>

#. Reconfigure |chef compliance| to restart the 60 minute setup timer.

   .. code-block:: bash

      $ chef-compliance-ctl reconfigure
