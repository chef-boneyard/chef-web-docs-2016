Chef provides a fully functional Chef Server that can be launched from the Azure Marketplace. This server is preconfigured with Chef server, Chef manage, and Chef reporting. This server is free to use for deployments under 25 nodes, and `can be licensed <https://www.chef.io/chef/#plans-and-pricing>`_ for deployments beyond 25 nodes.

#. `Sign in to Microsoft Azure <https://portal.azure.com>`_. (This Marketplace offering is only available via the new Azure Portal). Authenticate using your |azure| account credentials.

#. Click the **New** icon in the lower left corner of the portal.

#. Click **Compute**, then click **Azure Marketplace**. 

#. In the search box enter **"Chef Server"**.

#. Select the **Chef Server 12** offering.

#. Click **Create** and follow the steps to launch the Chef Server, providing a Host Name, User Name, Password or SSH key, and any additional information required.  

#. Once the virtual machine is launched, you will need to create an account to use with Chef Manage. To do this, open an SSH connection to the host using the User Name and Password (or SSH key) provided when you launch the VM.

#. Once logged in, run the following command:

	.. code-block:: bash
		sudo chef-setup -u <username> -p <password>
	
	Where ``<username>`` and ``<password>`` equal the User Name and Password you wish to use with Chef Manage.

#. Accept the **License Aggreement** by entering ``Yes`` and hitting enter.

#. The `chef-setup` command should return success. You can then navigate in a web browser to the appropriate URL of your Chef Server. Typically this is in the form of ``https://<vm-name>.cloudapp.net``, where ``<vm-name>`` is the name of your Azure VM.

#. Sign in to Chef Manage with with User Name and Password you created in the previous step. 

#. Chef Manage will then **Create** a new Organization. Click **Create Organization** and complete the form. 

#. Once the Organization is created, download the **Starter Kit** for the newly created Organization. You are now ready to use the Chef Server.