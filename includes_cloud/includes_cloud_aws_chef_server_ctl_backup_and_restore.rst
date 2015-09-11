.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

#. Take a backup:

   .. code-block:: bash

      $ chef-server-ctl backup

#. Copy the resulting tarball to your |amazon ami| instance:

   .. code-block:: bash

      $ scp /tmp/chef-backup-2014-12-10-20-31-40.tgz ec2-user@<MARKETPLACE AMI IP ADDRESS>:/tmp/

#. Login to the |amazon ami| and ensure that it is running the latest version of the |chef server|:

    .. code-block:: bash

      $ chef-marketplace-ctl upgrade -s
      $ chef-server-ctl reconfigure

#. Restore the backup:

    .. code-block:: bash

      $ chef-server-ctl restore /tmp/chef-backup-2014-12-10-20-31-40.tgz
