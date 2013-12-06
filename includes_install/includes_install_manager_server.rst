.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |chef manager| server:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-manage_1.0.0-1.ubuntu.10.04_amd64.deb

#. Disable the legacy web interface:

   Modify /etc/opscode/private-chef.rb to disable the existing opscode_webui service.

   .. code-block:: bash

      opscode_webui['enable']=false


#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

   This step is required for each of the front end servers in the Enterprise Chef deployment.  For
   example, in a configuration with two back end servers and three front end servers, this command
   would need to be run on all three front end machines.

#. Reconfigure the |chef manager| server:

   .. code-block:: bash

      $ opscode-manage-ctl reconfigure

   This step is required for each of the front end servers in the Enterprise Chef deployment.

#. Verify the installation:

   The |chef manager| should now be running and accessible by a web browser on port 443 (HTTPS)
