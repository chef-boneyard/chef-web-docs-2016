.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a tiered configuration, the |chef analytics| deployment is on different machines from the |chef server|, with a single back end and multiple load-balanced front end machines. In a tiered configuration, an existing |chef server| deployment should already running. 

|chef analytics| is installed in the following steps: 

* Configuring the |chef server| for |chef analytics|
* Installing |chef analytics| on the back end
* Installing |chef analytics| on the front ends

To install |chef analytics|:

#. Download the package from http://downloads.getchef.com/analytics/ to the machines that will be used for the |chef analytics| deployment. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/opscode-analytics-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/opscode-analytics-<version>.deb

   After a few minutes, |chef analytics| will be installed.

#. On each of the |chef analytics| machines, add the |fqdn| for the |chef analytics| frontend server to ``/etc/opscode/chef-server.rb``:

   .. code-block:: bash

	  oc_id['applications'] = { 
	    'analytics' => { 
	      'redirect_uri' => 'https://<analytics_fe_fqdn>' 
	    } 
	  }

#. On the |chef server| backend, stop the |chef server|:

   .. code-block:: bash

      $ chef-server-ctl stop
	  
#. On the |chef server| backend, enable remote access to |rabbitmq| on the |chef server| backend machine by adding the following settings to ``/etc/opscode/chef-server.rb``:

   .. code-block:: ruby

      rabbitmq['vip'] = 'BACKEND_VIP'
      rabbitmq['node_ip_address'] = ''

   where ``BACKEND_VIP`` is the external IP address for the backend |chef server|. ``node_ip_address`` MUST be set to ``0.0.0.0``.

   .. note:: |analytics rabbitmq_settings| 

#. Reconfigure the |chef server| backend:

   .. code-block:: bash

      $ chef-server-ctl reconfigure

#. Restart the |chef server| backend:
   
   .. code-block:: bash

      $ chef-server-ctl start

#. On the backend |chef analytics| machine, install the |chef analytics| package on the backend |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics<version>.deb

#. Copy over the ``/etc/opscode-analytics`` directory from the |chef server| machine to the backend |chef analytics| machine.

#. Edit the ``opscode-analytics.rb`` file on the backend |chef analytics| machine:

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

#. On the backend |chef analytics| machine, verify the configuration using the preflight check command:

   .. code-block:: bash

      $ opscode-analytics-ctl preflight-check

   If there are any errors in the preflight check, correct them before carrying on to the next step.

#. Reconfigure the |chef server| backend:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure



For each frontend machine:

#. Install the |chef analytics| package on the frontend |chef analytics| machine. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics<version>.deb

#. Copy over the ``actions-source.json``, ``webui_priv.pem``, and ``opscode-analytics-secrets.json`` files from  directory from the |chef analytics| backend machine to the frontend |chef analytics| machine.

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

