.. This is an included how-to. 


Once the workstation is configured, it can be used to install |chef| on one (or more) nodes across the organization using a |knife| bootstrap operation. The ``knife bootstrap`` command is used to |ssh| into the target machine, and then do what is needed to allow the |chef client| to run on the node. It will install the |chef exec client| executable (if necessary), generate keys, and register the node with the |chef server|. The bootstrap operation requires the IP address or |fully qualified domain name| of the target system, the |ssh| credentials (username, password or identity file) for an account that has root access to the node, and (if the operating system is not |ubuntu|, which is the default distribution used by ``knife bootstrap``) the operating system running on the target system.

To install |chef| on a node using ``knife bootstrap``:

1. In a command window, enter the following:

   .. code-block:: bash

      $ knife bootstrap 123.45.6.789 -x username -P password --sudo

   where ``123.45.6.789`` is the IP address or the FQDN for the node.

2. While the bootstrap operation is running, the command window will show something like the following:

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

3. When the bootstrap operation is finished, enter the following command:

   .. code-block:: bash

      $ knife client show name_of_client

   where ``name_of_client`` is the name of the client node that was just bootstrapped. The |chef server| return something similar to:

   .. code-block:: bash

         admin:       false
         chef_type:   client
         json_class:  Chef::ApiClient
         name:        name_of_client
         public_key: 

   This verifies that the node is recognized by the |chef server|.

