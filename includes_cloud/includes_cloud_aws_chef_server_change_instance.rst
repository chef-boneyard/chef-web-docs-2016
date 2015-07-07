.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

#. Login using |ssh| to access the |chef server| instance. Use the |ssh| key pair and the IP address or public hostname that was automatically assigned when the |amazon ami| was launched. The default user is ``ec2-user``. For example:

   .. code-block:: bash

      $ ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>

#. Stop the |chef server| using the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl stop

#. Navigate to the AWS instance in the AWS Web Console.
#. Select the instance and using the 'Actions' dropdown to select 'Instance State' and 'Stop'.
#. After the instance transitions to 'Stopped' change the instance size using the 'Actions' dropdown to select 'Instance Settings' and 'Change Instance Type'.
#. Select the desired instance size using the dropdown and click the 'Apply' button.
#. Start the instance using the 'Actions' dropdown to select 'Instance State' and 'Start'.
#. After the instance has started it will have a **new public IP address and public DNS**.  Login using ssh to the new instance using the |ssh| key pair and new IP address.  ``ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>``
#. Update the API FQDN in ``/etc/opscode/chef-server.rb`` using your new public DNS name.  For example:

   .. code-block:: bash

      $ sudo sed -ie "s/api_fqdn.*/api_fqdn 'ec2-52-6-31-230.compute-1.amazonaws.com'/" /etc/opscode/chef-server.rb

   **Replace ec2-52-6-31-230.compute-1.amazonaws.com with your new Public DNS name**

#. Reconfigure the |chef server| and |chef manage|:

   .. code-block:: bash

      $ sudo chef-server-ctl reconfigure
      $ sudo opscode-manage-ctl reconfigure

#. Verify that you can login to Manage UI by navigating to 'https://<YOUR NEW PUBLIC DNS>/login

   .. note:: In order to use TLS/SSL for the |chef manage| and |api chef server| the ``marketplace-setup`` command will automatically create and use a self-signed certificate. Modern web browsers typically warn about self-signed certificated during logon. Ignore the warning and accept the certificate.

#. Open a command prompt and change into your ``chef-repo`` directory.
#. Open ``.chef/knife.rb`` in a text editor and modify the ``chef_server_url`` with your new Public DNS.  For example:

   .. code-block:: bash

      $ vim ~/chef-repo/.chef/knife.rb

   .. code-block:: ruby

      current_dir = File.dirname(__FILE__)
      log_level                :info
      log_location             STDOUT
      node_name                "your_username"
      client_key               "#{current_dir}/your_username.pem"
      validation_client_name   "your_username-validator"
      validation_key           "#{current_dir}/your_username-validator.pem"
      chef_server_url          "https://<YOUR NEW PUBLIC DNS>/organizations/your_org"
      cookbook_path            ["#{current_dir}/../cookbooks"]

#. Run ``knife ssl fetch`` to add |chef server| SSL certificates to the your SSL trusted certificates.
#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization that was created previously.
#. Update the ``/etc/chef/client.rb`` on all of your nodes to use the new public DNS.  For example:

   .. code-block:: bash

      $ knife ssh name:* 'sudo sed -ie "s/chef_server_url.*/chef_server_url 'https://ec2-52-6-31-230.compute-1.amazonaws.com/organizations/your_org'/" /etc/chef/client.rb

   **Replace ec2-52-6-31-230.compute-1.amazonaws.com with your new Public DNS name and your_org with your Org name**
