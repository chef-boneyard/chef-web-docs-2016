.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To increase or decrease the number of licenses you'll need to migrate to your data to another |amazon ami| instance that is licensed in the range that you desire.

#. Launch a new |amazon ami| that is licensed for the maximum number of nodes you require.

   .. include:: ./includes_cloud_aws_chef_server_launch_ami.rst

#. Take a backup of your data and migrate it to your new node.

   .. include:: ./includes_cloud_aws_chef_server_ctl_backup_and_restore.rst

#. Verify that you can login to |chef manage| by navigating to ``https://<YOUR NEW NODES PUBLIC IP ADDRESS>/login``.

      .. note:: In order to use TLS/SSL for the |chef manage| and |api chef server| the ``marketplace-setup`` command will automatically create and use a self-signed certificate. Modern web browsers typically warn about self-signed certificated during logon. Ignore the warning and accept the certificate.

   .. include:: ./includes_cloud_download_fetch_ssl.rst

.. include:: ./includes_cloud_download_update_client_rb.rb
