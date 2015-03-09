.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef analytics| deployment is on a different machine from the |chef server|. This allows you to scale |chef analytics| independantly from the |chef server|. To set up |chef analytics| in a standalone configuration, an existing |chef server| deployment should already running. |chef analytics| is installed in two steps: configuring the |chef server| for |chef analytics|, and then installing |chef analytics|.

.. warning:: You will need the Manage product to be `installed <http://docs.chef.io/ctl_chef_server.html#install>`_ on the frontend(s) of the chef server in order to successfully configure and use Chef Analytics.

Install |chef analytics|:

#. Download the package from http://downloads.chef.io/analytics/ to the dedicated standalone machine that will be used for |chef analytics|. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/opscode-analytics-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/opscode-analytics-<version>.deb

   After a few minutes, |chef analytics| will be installed.

#. Configure the |chef server|. On each machine in the |chef server| configuration, 
   add the |fqdn| for the |chef analytics| server to ``/etc/opscode/chef-server.rb``. The ending slash is required:

   .. code-block:: bash

	  oc_id['applications'] = { 
	    'analytics' => { 
	      'redirect_uri' => 'https://<analytics_fqdn>/' 
	    } 
	  }

#. Stop the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl stop
	  
#. Enable remote access to |rabbitmq| on the |chef server| backend machine by adding the following settings to ``/etc/opscode/chef-server.rb``:

   .. code-block:: ruby

      rabbitmq['vip'] = 'BACKEND_VIP'
      rabbitmq['node_ip_address'] = '0.0.0.0'   # see below

   where ``BACKEND_VIP`` is the external IP address for the backend |chef server|. ``node_ip_address`` MUST be set to ``0.0.0.0``.

   .. note:: |analytics rabbitmq_settings| 

#. Reconfigure the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl reconfigure

   This updates the |chef server| and creates the ``actions-source.json`` file, which is required by |chef analytics|, and adds it to the ``/etc/opscode-analytics`` directory on the |chef server|.

#. Restart the |chef server|:
   
   .. code-block:: bash

      $ chef-server-ctl restart

#. If Manage is not already installed, install and configure it like this on all frontend(s) in the chef server cluster

   .. code-block:: bash

      chef-server-ctl install opscode-manage
      opscode-manage-ctl reconfigure

   Otherwise, just reconfigure Manage like

   .. code-block:: bash

      opscode-manage-ctl reconfigure
   
#. Configure the |chef analytics| standalone machine. Copy over the files in the ``/etc/opscode-analytics`` directory from the |chef server| machine to the standalone |chef analytics| machine.

#. Configure the |chef analytics| server by setting the ``analytics_fqdn`` in ``/etc/opscode-analytics/opscode-analytics.rb``. This is the |fqdn| for the |chef analytics| web application. For example:

   .. code-block:: bash

      analytics_fqdn "analytics.example.com"
      topology "standalone"

#. Verify the configuration using the preflight check command:

   .. code-block:: bash

      $ opscode-analytics-ctl preflight-check

   If there are any errors in the preflight check, correct them before carrying on to the next step.

#. Reconfigure the |chef analytics| server on the |chef analytics| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Verify the installation on the |chef analytics| machine:

   .. code-block:: bash

      $ opscode-analytics-ctl test

