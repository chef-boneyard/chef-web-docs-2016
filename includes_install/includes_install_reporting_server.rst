.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |reporting| server:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-reporting_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |reporting| server:

   .. code-block:: bash

      $ opscode-reporting-ctl reconfigure

   This step is required for each of the servers in the Enterprise Chef deployment. For example, in
   a configuration with two back end servers and three front end servers, this command would
   need to be run on all five machines.

#. Restart the |reporting| components:

   .. code-block:: bash

      $ private-chef-ctl restart opscode-reporting

#. Verify the installation:

   .. code-block:: bash

      $ opscode-reporting-ctl test
