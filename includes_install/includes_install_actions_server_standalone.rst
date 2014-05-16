.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef actions| server is on a different machine from the |chef server oec|. This allows
you to scale |chef actions| independantly from |chef server oec|.

To set up the |chef actions| server for a standalone configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Get an instance running with |chef server oec| 11.1.5 or higher.
#. Enable |chef actions| on the |chef server oec| machine by adding the following line to /etc/opscode/private-chef.rb

   .. code-block:: bash

      dark_launch['actions'] = true

#. Reconfigure the |chef server oec| server on |chef server oec| machine:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Install the |chef actions| package on a separate standalone machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_0.2.0-1.ubuntu.10.04_amd64.deb

#. Copy over the /etc/opscode-analytics/actions-source.rb file from the |chef server oec| machine to the standalone |chef actions| machine

#.

   .. code-block:: bash

      dark_launch['actions'] = true


#. Reconfigure the |chef actions| server on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl test
