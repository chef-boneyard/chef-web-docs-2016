.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. note:: The combined configuration places |chef server oec| and |chef analytics| on a single machine for testing purposes. This configuration should not be used in production scenarios.

To set up the |chef analytics| server for a |combined| deployment:

#. Contact |company_name| and get the package that is appropriate for the |chef server| platform and operating system.
#. Enable the |chef server| deployment to publish to |chef actions| by adding the following line to ``/etc/opscode/private-chef.rb``:

   .. code-block:: bash

      dark_launch['actions'] = true

#. Reconfigure the |chef server|:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Install the package on the same machine that is running |chef server| 11.1.8 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1_amd64.deb

#. Configure the |chef analytics| server by setting the analytics_fqdn in ``/etc/opscode-analytics/opscode-analytics.rb``. This is the FQDN for the |chef analytics| web application, and must be different from the api_fqdn set for |chef server|. For example:

   .. code-block:: bash

      analytics_fqdn "analytics.example.com"

#. Reconfigure the |chef analytics| server:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation:

   .. code-block:: bash

      $ opscode-analytics-ctl test
