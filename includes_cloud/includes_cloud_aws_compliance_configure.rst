.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Do the following:

#. Login using |ssh| to access the |chef compliance| instance. Use the |ssh| key pair and the IP address or public hostname that was automatically assigned when the |amazon ami| was launched. The default user is ``ec2-user``. For example:

   .. code-block:: bash

      $ ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>

   .. note:: It may take a few minutes after the instance is available for the |ssh| daemon to be ready to accept connections.

#. If you're using the |amazon ami| version 12.0.1-2 or earlier you'll need to fix ``cloud-init``, otherwise, move to the next step.

   .. code-block:: bash

      $ sudo sed -i '/^preserve_hostname/d' /etc/cloud/cloud.cfg
      $ sudo rm -rf /var/lib/cloud
      $ sudo /usr/bin/cloud-init -d init

#. Configure the |chef compliance| instance using the following command:

   .. code-block:: bash

      $ sudo chef-compliance-ctl marketplace-setup


