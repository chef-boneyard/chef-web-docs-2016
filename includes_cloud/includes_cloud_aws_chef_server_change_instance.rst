.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To edit the |amazon ami| instance size, do the following:

#. Login using |ssh| to access the |chef server| instance. Use the |ssh| key pair and the IP address or public hostname that was automatically assigned when the |amazon ami| was launched. The default user is ``ec2-user``. For example:

   .. code-block:: bash

      $ ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>

#. Stop the |chef server| using the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl stop

#. Navigate to the |amazon aws| instance in the |amazon aws console|.
#. From the **Actions** dropdown, select **Instance State**, and then **Stop**.
#. After the instance transitions to **Stopped**, edit the instance size. From the **Actions** dropdown, select **Instance Settings**, and then **Change Instance Type**.
#. From the dropdown, select the desired instance size, and then click **Apply**.
#. From the **Actions** dropdown, select **Instance State**, and then click **Start**.
#. After the instance has started it will have a **new public IP address and public DNS**.
#. Use |ssh| to log into the new instance. Use the |ssh| key pair and new IP address: 

   .. code-block:: bash

      ``ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>``

#. Update the API FQDN in ``/etc/opscode/chef-server.rb`` using the public DNS name.  For example:

   .. code-block:: bash

      $ sudo sed -ie "s/api_fqdn.*/api_fqdn 'ec2-52-6-31-230.compute-1.amazonaws.com'/" /etc/opscode/chef-server.rb

   Replace ``ec2-52-6-31-230.compute-1.amazonaws.com`` with the public DNS name.

#. Reconfigure the |chef server| and |chef manage|:

   .. code-block:: bash

      $ sudo chef-server-ctl reconfigure

   and then:

   .. code-block:: bash

      $ sudo opscode-manage-ctl reconfigure

#. Verify that you can login to |chef manage| by navigating to ``https://<YOUR NEW PUBLIC DNS>/login``.

   .. note:: In order to use TLS/SSL for the |chef manage| and |api chef server| the ``marketplace-setup`` command will automatically create and use a self-signed certificate. Modern web browsers typically warn about self-signed certificated during logon. Ignore the warning and accept the certificate.

#. Open a command prompt and change into your ``chef-repo`` directory.
#. Open ``.chef/knife.rb`` in a text editor and modify the ``chef_server_url`` with your new public DNS.  For example:

   .. code-block:: bash

      $ vim ~/chef-repo/.chef/knife.rb

   .. code-block:: ruby

      current_dir = File.dirname(__FILE__)
      log_level                :info
      log_location             STDOUT
      node_name                'your_username'
      client_key               '#{current_dir}/your_username.pem'
      validation_client_name   'your_username-validator'
      validation_key           '#{current_dir}/your_username-validator.pem'
      chef_server_url          'https://<YOUR NEW PUBLIC DNS>/organizations/your_org'
      cookbook_path            ['#{current_dir}/../cookbooks']

.. include:: ./includes_cloud_download_fetch_ssl.rst

.. include:: ./includes_cloud_download_update_client_rb.rb
