.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef analytics| deployment is on a different machine from |chef server oec|. This allows you to scale |chef analytics| independantly from |chef server oec|. To set up |chef analytics| in a standalone configuration,  you should have an existing |chef server| deployment already running. First run the following steps on the |chef server| instances:

#. Download the package from http://downloads.getchef.com/analytics/.
#. Enable the |chef server| deployment to publish to |chef actions| by adding the following line to ``/etc/opscode/private-chef.rb``:

   .. code-block:: bash

      dark_launch['actions'] = true

#. Stop the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl stop
	  
#. Enable remote access to |rabbitmq| on the |chef server| backend machine by adding the following settings to ``/etc/opscode/private-chef.rb``:

   .. code-block:: ruby

      rabbitmq['vip'] = 'BACKEND_VIP'
      rabbitmq['node_ip_address'] = ''

   where ``BACKEND_VIP`` is the external IP address for the backend |chef server|. ``node_ip_address`` MUST be set to ``0.0.0.0``.

   .. note:: |analytics rabbitmq_settings| 

#. Reconfigure the |chef server| on |chef server| machines:

   .. code-block:: bash

      $ chef-server-ctl reconfigure

#. Restart the |chef server|:
   
   .. code-block:: bash

      $ chef-server-ctl start

#. If you are on |chef server| 11.1.8 you need to manually copy a single file from ``/etc/opscode`` to ``/etc/opscode-analytics``:

   .. code-block:: bash

      $ cp /etc/opscode/webui_priv.pem /etc/opscode-analytics

Now run the following steps on your |chef analytics| standalone instance:

#. Install the |chef analytics| package on the standalone |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1_amd64.deb

#. Copy over the ``/etc/opscode-analytics`` directory from the |chef server| machine to the standalone |chef analytics| machine.

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
