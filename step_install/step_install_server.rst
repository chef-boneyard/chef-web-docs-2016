To install |chef server 11|, do the following:

#. Go to http://www.opscode.com/chef/install.

#. Click the **Chef Server** tab.

#. Select the operating system, version, and architecture.

#. Select the version of |chef server 11| to download, and then click the link that appears to download the package.

#. Install the downloaded package using the correct method for the operating system on which |chef server 11| will be installed.

#. Configure |chef server 11| by running the following command:

   .. code-block:: bash
   
      $ sudo chef-server-ctl reconfigure

   This command will set up all of the required components, including |erchef|, |rabbitmq|, |postgresql|, and all of the cookbooks that are used by |chef solo| to maintain |chef server 11|.

#. Verify the installation of |chef server 11| by running the following command:

   .. code-block:: bash

      $ chef-server-ctl test

   This will run the |chef pedant| test suite against the installed |chef server 11| and will report back that everything is working and installed correctly.

#. `Set up a workstation <http://docs.opscode.com/chef/install_workstation.html>`_.

#. From the workstation, verify the install by running the following commands to ensure that every |chef client| and user was registered correctly.

   .. code-block:: bash

      $ knife client list

   and:

   .. code-block:: bash

      $ knife user list

