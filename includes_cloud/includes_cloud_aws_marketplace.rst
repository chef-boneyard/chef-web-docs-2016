.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef| provides a fully functional |chef server| AMIs that can be launched from the `AWS Marketplace <https://aws.amazon.com/marketplace>`_ and come preconfigured with |chef server|, |chef manage|, and |reporting|. We currently offer 7 AMIs that are fully licensed and can accommodate 5, 25, 50, 100, 150, 200 and 250 nodes. The cost of licenses is bundled into the AMI and the billing is done hourly through AWS.

Launch the Marketplace AMI
-----------------------------

#. Login to the `AWS Marketplace <https://aws.amazon.com/marketplace>`_ using your AWS credentials

#. Choose an AMI based on the number of nodes you intend to manage with Chef.

#. Select the AWS Region and click the continue button.

#. Configure the AMI to your choosing.  The default settings should be sufficient for most use cases.

#. Launch the AMI.  Be sure to associate an SSH key pair that you have available on your workstation.

Install the ChefDK
----------------------

The Chef Server has a feature rich Web UI to create and view Chef policy but you'll also want to download and install the `Chef development kit <https://docs.chef.io/install_dk.html>`_ onto your workstation.  The ChefDK is a self contained package that provides lots of useful command line utilities to make developing Chef Cookbooks and managing Chef Nodes a blast.

Configure the Chef Server Marketplace Appliance
-------------------------------------------------

#. Now that you've got the ChefDK installed and the AMI has has enough time to provision and boot it's time to login to our Chef Server and set up an account.  SSH into the Chef Server instance using your keypair and the IP address or public hostname that was automatically assigned when you launched it. The default user that you'll want to use is 'ec2-user', eg:

   .. code-block:: bash

      $ ssh -i /path/to/your/ssh_key.pem ec2-user@<instance IP address>

#. Once logged in, run the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl marketplace-setup

   Make sure to use a password that is at least 6 characters long.  After you've supplied all of the required information we'll do the intial configuration of the Chef Server.  This typically takes a few minutes to complete.

#. Sign in to the |chef manage| console.  The marketplace-setup command should output the username and URL that you'll need to login.

.. note:: In order to use TLS/SSL for the WebUI and Chef Server API, the marketplace-setup command will automatically create a self-signed certificate.  Most modern web browsers will warn you about the self-signed certificate when you attempt to log-in.  For our purposes, it should be fine to ignore the warning and accept the certificate.

#. After you've signed into the WebUI, use the last link from the marketplace-setup command to direct you to the Starter Kit downloads page.  Download the Starter Kit to your workstation.

#. Extract the starter kit zip file. Open a command prompt and change into the ``chef-repo`` directory extracted from the starter kit.

#. Run ``knife ssl fetch`` to retrieve the |ssl| keys for the |chef server|.

#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization you previously created. You are now ready to add virtual machines to your |chef server|.

#. At this point you're ready to bootstrap nodes with your new Chef Server!
