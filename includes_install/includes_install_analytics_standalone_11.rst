.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a standalone configuration, the |chef analytics| deployment is on a different machine from the |chef server|. This allows you to scale |chef analytics| independantly from the |chef server|. To set up |chef analytics| in a standalone configuration, an existing |chef server| deployment should already running. |chef analytics| is installed in two steps: configuring the |chef server| for |chef analytics|, and then installing |chef analytics|.

On the |chef server| machines:

#. Download the package from http://downloads.getchef.com/analytics/.

#. Add the |fqdn| for the |chef analytics| server to ``/etc/opscode/chef-server.rb``:

   .. code-block:: bash

	  oc_id['applications'] = { 
	    'analytics' => { 
	      'redirect_uri' => 'https://<analytics_fqdn>' 
	    } 
	  }

#. Stop the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl stop
	  
#. Enable remote access to |rabbitmq| on the |chef server| backend machine by adding the following settings to ``/etc/opscode/chef-server.rb``:

   .. code-block:: ruby

      rabbitmq['vip'] = 'BACKEND_VIP'
      rabbitmq['node_ip_address'] = ''

   where ``BACKEND_VIP`` is the external IP address for the backend |chef server|. ``node_ip_address`` MUST be set to ``0.0.0.0``.

   .. note:: |analytics rabbitmq_settings| 

#. Reconfigure the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl reconfigure

#. Restart the |chef server|:
   
   .. code-block:: bash

      $ chef-server-ctl start


On the dedicated, standalone machine:

#. Install the |chef analytics| package on the standalone |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics<version>.deb

#. Copy over the ``/etc/opscode-analytics`` directory from the |chef server| machine to the standalone |chef analytics| machine.

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
