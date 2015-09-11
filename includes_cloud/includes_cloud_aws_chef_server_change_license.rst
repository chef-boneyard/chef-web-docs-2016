.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To increase or decrease the number of licenses you'll need to migrate to your data to another |amazon ami| instance that is licensed in the range that you desire.

#. Launch a new |amazon ami| that is licensed for the maximum number of nodes you require.

#. `Launch the AMI <http://docs.chef.io/aws_marketplace.html#launch-the-ami>`_

#. .. include:: ../../step_install/step_install_chef_server_backup.rst

#. Copy the resulting tarball to your |amazon ami| instance:

   .. code-block:: bash

      $ scp /tmp/chef-backup-2014-12-10-20-31-40.tgz ec2-user@<MARKETPLACE AMI IP ADDRESS>:/tmp/

#. Login to the |amazon ami| and ensure that it is running the latest version of the |chef server|:

   .. code-block:: bash

      $ chef-marketplace-ctl upgrade -s

#. .. include:: ../../step_install/step_install_chef_server_reconfigure.rst

#. Restore the backup:

   .. code-block:: bash

      $ chef-server-ctl restore /tmp/chef-backup-2014-12-10-20-31-40.tgz

#. Verify that you can login to |chef manage| by navigating to ``https://<YOUR NEW NODES PUBLIC IP ADDRESS>/login``.

   .. note:: In order to use TLS/SSL for the |chef manage| and |api chef server| the ``marketplace-setup`` command will automatically create and use a self-signed certificate. Modern web browsers typically warn about self-signed certificated during logon. Ignore the warning and accept the certificate.

#. .. include:: ../../step_install/step_install_aws_chef_server_knife_ssl_fetch.rst
#. .. include:: ../../step_install/step_install_aws_chef_server_knife_client_list.rst
#. .. include:: ../../step_install/step_install_aws_chef_server_update_to_public_dns.rst
