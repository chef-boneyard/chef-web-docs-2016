.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef| provides a fully functional |chef server| AMIs that can be launched from the `AWS Marketplace <https://aws.amazon.com/marketplace/seller-profile/ref=srh_res_product_vendor?ie=UTF8&id=e7b7691e-634a-4d35-b729-a8b576175e8c>`_ and come preconfigured with |chef server|, |chef manage|, and |reporting|. We currently offer 7 AMIs that are fully licensed and can accommodate `5 <https://aws.amazon.com/marketplace/pp/B010OMNV2W>`_, `25 <https://aws.amazon.com/marketplace/pp/B010OMO0UE>`_, `50 <https://aws.amazon.com/marketplace/pp/B010OMNZNW>`_, `100 <https://aws.amazon.com/marketplace/pp/B010OMNWBW>`_, `150 <https://aws.amazon.com/marketplace/pp/B010OMO25W>`_, `200 <https://aws.amazon.com/marketplace/pp/B010OMCM6I>`_ and `250 <https://aws.amazon.com/marketplace/pp/B010OMNXH0>`_ nodes. The AMI's are fully licensed for use with all of Chef's premium features and hourly billing is done hourly through your AWS account.

Launch the Marketplace AMI
-----------------------------

#. Login to the `AWS Marketplace <https://aws.amazon.com/marketplace>`_ using your AWS credentials

#. `Choose an AMI <https://aws.amazon.com/marketplace/seller-profile/ref=dtl_pcp_sold_by?ie=UTF8&id=e7b7691e-634a-4d35-b729-a8b576175e8c>`_ based on the number of nodes you intend to manage with Chef.

#. Configure the Region, Instance Type, VPC Settings, Security Group and SSH Key Pair.

#. Launch the AMI

Install the ChefDK
----------------------

While the new instances is spinning up and doing it's initial configuration you'll want to download and install the `Chef Developer Kit <https://docs.chef.io/install_dk.html>`_.  While the Chef Server Manage Web UI is feature rich and very useful for viewing and creating Chef policy for your nodes, the ChefDK provides a whole suite of very useful command line utilities that you'll want when developing and testing cookbooks.

Configure the Chef Server Marketplace Appliance
-------------------------------------------------

#. Now that you've got the ChefDK installed and the AMI has has enough time to provision and boot it's time to login and configure your new Chef Server.  SSH into the Chef Server instance using your keypair and the IP address or public hostname that was automatically assigned when you launched it. The default user that you'll want to use is 'ec2-user', eg:

   .. code-block:: bash

      $ ssh -i /path/to/your/ssh_key.pem ec2-user@<instance IP address>

#. After you've logged in you can configure the Chef Server by running the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl marketplace-setup

   **When prompted be sure to use a password that is at least 6 characters long.**

#. The ``marketplace-setup`` command should output the username and URL that you'll need to login to the |chef manage| Web UI.  Follow the supplied link and login.

.. note:: In order to use TLS/SSL for the WebUI and Chef Server API the ``marketplace-setup`` command will automatically create and use a self-signed certificate.  Modern web browsers will warn you about the self-signed certificate when you attempt to log-in.  For our purposes it should be fine to ignore the warning and accept the certificate.

#. The ``marketplace-setup`` command should also supply a link to Starter Kit.  The Starter Kit a zip file that contains various configuration files, your user key to authenticate with the Chef Server, and the validation key that you can use to bootstrap nodes with the Chef Server.  Follow the link and download the Starter Kit.

#. Extract the chef-starter.zip file to a directory on your workstation. Open a command prompt and change into the ``chef-repo`` directory extracted from the starter kit. eg:

   .. code-block:: bash

      $ cd ~/Downloads
      $ unzip chef-starter.zip
      $ cd chef-repo

#. Run ``knife ssl fetch`` to add your |chef server| SSL certificates to the your SSL trusted certificates.

#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization you previously created. You are now ready to add virtual machines to your |chef server|.

#. Congratulations!  Now you're ready to bootstrap nodes with your Chef Server!
