.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef analytics| deployment is on a different machine from |chef server oec|. This allows you to scale |chef analytics| independantly from |chef server oec|. To set up |chef analytics| in a standalone configuration,  you should have an existing |chef server oec| deployment already running. First run the following steps on your |chef server oec| instances:

#. Enable your |chef server oec| deployment to publish to |chef actions| by adding the following line to ``/etc/opscode/private-chef.rb``:

   .. code-block:: bash

      dark_launch['actions'] = true

#. Enable remote access to |rabbitmq| on the |chef server oec| backend machine by adding the following line to ``/etc/opscode/private-chef.rb``, where ``EXTERNAL_IP`` is the external IP address for the |chef server oec| and where ``0.0.0.0`` is the value that must be set for ``node_ip_address``:

   .. code-block:: bash

      rabbitmq['vip'] = 'EXTERNAL_IP'
      rabbitmq['node_ip_address'] = '0.0.0.0'

   .. note:: |analytics rabbitmq_settings| 

#. Reconfigure the |chef server oec| server on |chef server oec| machines:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. If you are on |chef server oec| 11.1.8 you need to manually copy a single file from ``/etc/opscode`` to ``/etc/opscode-analytics``:

   .. code-block:: bash

      $ cp /etc/opscode/webui_priv.pem /etc/opscode-analytics

Now run the following steps on your |chef analytics| standalone instance:

#. Install the |chef analytics| package on the standalone |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1_amd64.deb

#. Copy over the ``/etc/opscode-analytics`` directory from the |chef server oec| machine to the standalone |chef analytics| machine.

#. Configure the |chef analytics| server by setting the ``analytics_fqdn`` in ``/etc/opscode-analytics/opscode-analytics.rb``. This is the |fqdn| for the |chef analytics| web application. For example:

   .. code-block:: bash

      analytics_fqdn "analytics.example.com"
      topology "standalone"

#. Verify your configuration with the preflight check tool:

   .. code-block:: bash

      $ opscode-analytics-ctl preflight-check

   If there are any errors in the preflight check, correct them before carrying on to the next step.

#. Reconfigure the |chef analytics| server on the |chef analytics| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation on the |chef analytics| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl test
