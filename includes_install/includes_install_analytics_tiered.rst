.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a tiered configuration, the |chef analytics| deployment is on different machines from the |chef server|, with a single back end and multiple load-balanced front end machines. In a tiered configuration, an existing |chef server| deployment should already running. 

|chef analytics| is installed in the following steps: 

* Configuring the |chef server| for |chef analytics|
* Installing |chef analytics| on the back end
* Installing |chef analytics| on the front ends

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


On the back end machine:

#. Install the |chef analytics| package on the back end |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics<version>.deb

#. Copy over the ``/etc/opscode-analytics`` directory from the |chef server| machine to the back end |chef analytics| machine.

#. Edit the ``opscode-analytics.rb`` file:

   .. code-block:: bash

      analytics_fqdn "<fe_fqdn>"
      topology "tier"
      server "<be_fqdn>",
        :ipaddress => "<be_ip>",
        :role => "backend",
        :bootstrap => true
      server "<fe_fqdn>",
        :ipaddress => "<fe_ip>",
        :role => "frontend"
      backend_vip "<be_fqdn>",
        :ipaddress => "<be_ip>"

#. Verify the configuration using the preflight check command:

   .. code-block:: bash

      $ opscode-analytics-ctl preflight-check

   If there are any errors in the preflight check, correct them before carrying on to the next step.

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure



For each front end machine:

#. Install the |chef analytics| package on the front end |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics<version>.deb

#. Copy over the ``actions-source.json``, ``webui_priv.pem``, and ``opscode-analytics-secrets.json`` files from  directory from the |chef analytics| back end machine to the front end |chef analytics| machine.

#. Edit the ``opscode-analytics.rb`` file:

   .. code-block:: bash

      analytics_fqdn "<fe_fqdn>"
      topology "tier"
      server "<be_fqdn>",
        :ipaddress => "<be_ip>",
        :role => "backend",
        :bootstrap => true
      server "<fe_fqdn>",
        :ipaddress => "<fe_ip>",
        :role => "frontend"
      backend_vip "<be_fqdn>",
        :ipaddress => "<be_ip>"

#. Verify the configuration using the preflight check command:

   .. code-block:: bash

      $ opscode-analytics-ctl preflight-check

   If there are any errors in the preflight check, correct them before carrying on to the next step.

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

