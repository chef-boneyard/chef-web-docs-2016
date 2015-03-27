.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef| provides a fully functional |chef server| that can be launched from the |azure| marketplace. This server is preconfigured with |chef server|, the |chef manage|, and |reporting|. This configuration is free to use for deployments under 25 nodes, and `can be licensed <https://www.chef.io/chef/#plans-and-pricing>`_ for deployments beyond 25 nodes.

Before getting started, you will need a functioning workstation. Install the `Chef development kit <https://docs.chef.io/install_dk.html>`_ on that workstation.

#. `Sign in to Microsoft Azure <https://portal.azure.com>`__. (This marketplace offering is only available via the |azure portal|). Authenticate using your |azure| account credentials.

#. Click the **New** icon in the lower left corner of the portal.

#. Click **Compute**, then click **Azure Marketplace**. 

#. In the search box enter **"Chef Server"**.

#. Select the **Chef Server 12** offering.

#. Click **Create** and follow the steps to launch the |chef server|, providing a host name, user name, password or SSH key, and any additional information required.  

#. Once the virtual machine is launched, you will need to create an account to use with the |chef manage|. To do this, open an SSH connection to the host using the user name and password (or SSH key) provided when you launch the virtual machine.

#. Once logged in, run the following command:

   .. code-block:: bash

      $ sudo chef-setup -u <username> -p <password>
	
   where ``<username>`` and ``<password>`` equal the user name and password you wish to use with the |chef manage|. The password must be at least 6 characters.

#. Accept the **License Agreement** by entering ``Yes`` and hitting enter.

#. The ``chef-setup`` command should return success. Navigate in a web browser to the appropriate URL of the |chef server|. Typically this is in the form of ``https://<vm-name>.cloudapp.net``, where ``<vm-name>`` is the name of your |azure| virtual machine.

#. Sign in to the |chef manage| with with user name and password created in the previous step. 

#. The |chef manage| will then **Create** a new organization. Click **Create Organization** and complete the form. 

#. Once the organization is created, download the **Starter Kit** for the newly created organization. 

#. Extract the starter kit zip file downloaded. Open a command prompt and change into the ``chef-repo`` directory extracted from the starter kit.

#. Run ``knife ssl fetch`` to retrieve the SSL keys for the |chef server|.

#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization you previously created. You are now ready to add virtual machines to your |chef server|.
