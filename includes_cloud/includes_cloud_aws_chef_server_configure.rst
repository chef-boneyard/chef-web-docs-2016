.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


After the |chef dk| is installed and the |amazon ami| for |chef server| has been provisioned, do the following:

#. Login using |ssh| to access the |chef server| instance. Use the |ssh| key pair and the IP address or public hostname that was automatically assigned when the |amazon ami| was launched. The default user is ``ec2-user``. For example:

   .. code-block:: bash

      $ ssh -i /path/to/ssh_key.pem ec2-user@<instance IP address>

   .. note::  It may take a few minutes after the instance is available for the SSH daemon to be ready to accept connections.

#. If you're using the |amazon ami| verion 12.0.1-2 or earlier you'll need to fix ``cloud-init``, otherwise, move to the next step.

   .. code-block:: bash

      $ sudo sed -i '/^preserve_hostname/d' /etc/cloud/cloud.cfg
      $ sudo rm -rf /var/lib/cloud
      $ sudo /usr/bin/cloud-init -d init

#. Configure the |chef server| using the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl marketplace-setup

   When prompted be sure to use a password that is at least 6 characters long.

   And then create an organization. When prompted, enter the organization name, and then a full organization name.

   |name_rules org| For example: ``chef``.

   |name_rules org_full| For example: ``"Chef Software, Inc."``.

#. The ``marketplace-setup`` command should output the username and URL that needed to login to the |chef manage|. Follow the supplied link and login.

   .. note:: In order to use TLS/SSL for the |chef manage| and |api chef server| the ``marketplace-setup`` command will automatically create and use a self-signed certificate. Modern web browsers typically warn about self-signed certificated during logon. Ignore the warning and accept the certificate.

#. The ``marketplace-setup`` command should supply a link to starter kit, which is a zip file that contains various configuration files for the workstation, including the user key required for authentication to the |chef server| and the validation key used to bootstrap nodes with the |chef server|. Follow the link that is provided and download the starter kit.
#. Extract the ``chef-starter.zip`` file to a directory on the workstation. Open a command prompt and change into the ``chef-repo`` directory extracted from the starter kit. eg:

   .. code-block:: bash

      $ cd ~/Downloads
      $ unzip chef-starter.zip
      $ cd chef-repo

#. Run ``knife ssl fetch`` to add |chef server| SSL certificates to the your SSL trusted certificates.
#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization that was created previously.
#. Add virtual machines to the |chef server|.
#. Bootstrap nodes with the |chef server|.
