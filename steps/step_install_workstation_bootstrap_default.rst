.. This is an included how-to. 


Once the workstation is configured, it can be used to install |chef| on one (or more) nodes across the organization using a |knife| bootstrap operation. The bootstrap operation must specify the IP address or FQDN of the target system, the username and password for an account that has root access to the node, and (if the operating system is not |ubuntu|) the operating system running on the target system.

To install |chef| on a node using ``knife bootstrap``:

1. In a command window, enter the following:

   .. code-block:: bash

      $ knife bootstrap 172.xx.x.xxx -x username -P password --sudo

2. While the bootstrap operation is running, the command window will show something like the following:

   .. code-block:: bash

      Bootstrapping Chef on 172.xx.x.xxx
      172.xx.x.xxx knife sudo password: 
      Enter your password: 
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:05 -0700] INFO: *** Chef 10.12.0 ***
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:07 -0700] INFO: Client key /etc/chef/client.pem is not present - registering
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Setting the run_list to [] from JSON
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Run List is []
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Run List expands to []
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Starting Chef Run for name_of_node
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Running start handlers
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:15 -0700] INFO: Start handlers complete.
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:17 -0700] INFO: Loading cookbooks []
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:17 -0700] WARN: Node name_of_node has an empty run list.
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Chef Run complete in 3.986283452 seconds
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Running report handlers
      172.xx.x.xxx 
      172.xx.x.xxx [Fri, 07 Sep 2012 11:05:19 -0700] INFO: Report handlers complete
      172.xx.x.xxx

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

