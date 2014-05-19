.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. note :: The combined configuration places |chef server oec| and |chef actions| on a single machine for testing purposes.
  This configuration should not be used in production scenarios.

To set up the |chef actions| server for a combined configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Enable |chef actions| on the |chef server oec| machine by adding the following line to /etc/opscode/private-chef.rb

   .. code-block:: bash

      dark_launch['actions'] = true

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Install the package on the same machine that is running |chef server oec| 11.1.5 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_0.2.1-1.ubuntu.10.04_amd64.deb

#. Configure the |chef actions| server by setting the analytics_fqdn in /etc/opscode-analytics/opscode-analytics.rb.
   This is the FQDN for the |chef actions| web application, and must be different from the api_fqdn set for |chef server oec|. For example:

   .. code-block:: bash

      analytics_fqdn "analytics.example.com"

#. Reconfigure the |chef actions| server:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation:

   .. code-block:: bash

      $ opscode-analytics-ctl test
