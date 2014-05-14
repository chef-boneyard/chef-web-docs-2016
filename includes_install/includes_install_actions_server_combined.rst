.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |chef actions| server for a standalone configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.1.4 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Reconfigure the |chef actions| server:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure


#. Verify the installation:

   .. code-block:: bash

      $ opscode-analytics-ctl test
