.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef actions| server is on a different machine from the |chef server oec|. This allows
you to scale |chef actions| independantly from |chef server oec|.

To set up the |chef actions| server for a standalone configuration, first run the following steps on your |chef server oec| instance:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Get an instance running with |chef server oec| 11.1.8 or higher.
#. Enable |chef actions| on the |chef server oec| machine by adding the following line to /etc/opscode/private-chef.rb

   .. code-block:: bash

      dark_launch['actions'] = true

#. Enable remote access to Rabbitmq on the |chef server oec| backend machine by adding the following line to /etc/opscode/private-chef.rb
   where BACKEND_VIP is the VIP for the |chef server oec| backend.

   .. code-block:: bash

      rabbitmq['vip'] = BACKEND_VIP
      rabbitmq[node_ip_address'] = '0.0.0.0'


#. Reconfigure the |chef server oec| server on |chef server oec| machine:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. If you are on |chef server oec| 11.1.8 you need to manually copy a single file from /etc/opscode to /etc/opscode-analytics

   .. code-block:: bash

      $ cp /etc/opscode/webui_priv.pem /etc/opscode-analytics

Now run the following steps on your |chef actions| standalone instance:

#. Install the |chef actions| package on the standalone |chef actions| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1_amd64.deb

#. Copy over the /etc/opscode-analytics directory from the |chef server oec| machine to the standalone |chef actions| machine

#. Configure the |chef actions| server by setting the analytics_fqdn in /etc/opscode-analytics/opscode-analytics.rb.
   This is the FQDN for the |chef actions| web application. For example:

   .. code-block:: bash

      analytics_fqdn "analytics.example.com"
      topology "standalone"

#. Reconfigure the |chef actions| server on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation on |chef actions| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl test
