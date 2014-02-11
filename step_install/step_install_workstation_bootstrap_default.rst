.. This is an included how-to. 


Once the machine is configured, it can be used to install the |chef client| on one (or more) nodes across the organization using a |knife| bootstrap operation. The ``knife bootstrap`` command is used to |ssh| into the target machine, and then do what is needed to allow the |chef client| to run on the node. It will install the |chef client| executable (if necessary), generate keys, and register the node with the |chef server|. The bootstrap operation requires the IP address or |fqdn| of the target system, the |ssh| credentials (username, password or identity file) for an account that has root access to the node, and (if the operating system is not |ubuntu|, which is the default distribution used by ``knife bootstrap``) the operating system running on the target system.

To install the |chef client| on a node using ``knife bootstrap``:

#. In a command window, enter the following:

   .. code-block:: bash

      $ knife bootstrap 123.45.6.789 -x username -P password --sudo

   where ``123.45.6.789`` is the IP address or the |fqdn| for the node. Use the ``--distro`` option to specify a non-default distribution. For more information about the options available to the |subcommand knife bootstrap| command for |ubuntu|- and |linux|-based platforms, see `knife bootstrap <http://docs.opscode.com/knife_bootstrap.html>`_. For |windows|, the |subcommand knife windows| plugin is required, see `knife windows <http://docs.opscode.com/plugin_knife_windows.html>`_.

#. While the bootstrap operation is running, the command window will show something like the following:

   .. code-block:: bash

      Bootstrapping Chef on 123.45.6.789
      123.45.6.789 knife sudo password: 
      Enter your password: 
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:05 -0700] INFO: *** Chef 10.12.0 ***
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:07 -0700] INFO: Client key /etc/chef/client.pem is not present - registering
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Setting the run_list to [] from JSON
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Run List is []
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Run List expands to []
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Starting Chef Run for name_of_node
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Running start handlers
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Start handlers complete.
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:17 -0700] INFO: Loading cookbooks []
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:17 -0700] WARN: Node name_of_node has an empty run list.
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Chef Run complete in 3.986283452 seconds
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Running report handlers
      123.45.6.789 
      123.45.6.789 [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Report handlers complete
      123.45.6.789



