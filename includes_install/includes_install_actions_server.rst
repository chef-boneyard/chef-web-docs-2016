.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |chef actions| server for a standalone configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Get an instance running with |chef server oec| 11.1.4 or higher.
#. Install the |chef actions| package on a separate standalone machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1.ubuntu.10.04_amd64.deb

#. Copy over the /etc/opscode/analytics.rb file from the |chef server oec| machine to the standalone |chef actions| machine
#. Reconfigure the |chef server oec| server on |chef server oec| machine:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Reconfigure the |chef actions| server on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl test
