.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef| provides a fully functional |chef server| AMIs that can be launched from the Amazon Web Services Marketplace and come preconfigured with |chef server|, the |chef manage|, and |reporting|. We currently offer 7 AMIs that are fully licensed and can accommodate 5, 25, 50, 100, 150, 200 and 250 nodes. The cost of licenses is bundled into the AMI and the billing is done hourly through AWS.

Launch the Marketplace AMI
-----------------------------

#. Login to the `AWS Marketplace <https://aws.amazon.com/marketplace>` using your AWS credentials

#. Choose an AMI based on the number of nodes you intend to manage with Chef.

#. Select the AWS Region and click the continue button.

#. Configure the AMI to your choosing.  The default settings should be sufficient for most use cases.

#. Launch the AMI.  Be sure to associate an SSH key pair that you have available on your workstation.

Install the ChefDK
----------------------

While the Chef Server has a feature rich Web UI to create and view Chef policy, we'll also want to download and install the `Chef development kit <https://docs.chef.io/install_dk.html>` or ChefDK onto your workstation.

Configure the Chef Server Marketplace Appliance
-------------------------------------------------

#. Now that you've got the ChefDK installed and the AMI has has enough time to provision and boot you'll need to login to AMI to set up your account and accept the Chef End User Licensing Agreement.  To do so you'll need to SSH into the instance using your keypair and the IP address or public hostname of the instance. The default user that you'll want to use is 'ec2-user', eg:

   .. code-block:: bash

      $ ssh -i /path/to/your/ssh_key.pem ec2-user@<instance IP address>

#. Once logged in, run the following command:

   .. code-block:: bash

      $ sudo chef-server-ctl marketplace-setup

   Make sure to use a password that is at least 6 characters long.  After you've supplied all of the required information we'll do the intial configuration of the Chef Server.  This typically takes a few minutes to complete.

#. Sign in to the |chef manage| with with user name and password created in the previous step.  The command should output the URL you can use to login.

.. note:: In order to use TLS the marketplace-setup command will create a self-signed certificate that we'll use.  Most modern browsers should warn you about this when you attempt to log-in.  For our purposes it should be fine to accept the certificate and ignore the warning.

#. After you've signed in you'll want to download the **Starter Kit** by following the link provided after you ran the previous command.

#. Extract the starter kit zip file downloaded. Open a command prompt and change into the ``chef-repo`` directory extracted from the starter kit.

#. Run ``knife ssl fetch`` to retrieve the |ssl| keys for the |chef server|.

#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization you previously created. You are now ready to add virtual machines to your |chef server|.
