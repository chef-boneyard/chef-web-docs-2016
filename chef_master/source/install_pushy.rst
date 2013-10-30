=====================================================
Install |pushy|
=====================================================

|pushy| is installed on the same physical hardware as the |chef server oec| server (version 11.0.1 or higher), as a client on all nodes that will be managed by |pushy|, and then on at least one management workstation


|pushy| Server
=====================================================
To set up the |pushy| server:

#. Download the package appropriate for the server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.0.1. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-push-jobs-server_0.0.1+20130307070157.git.98.c04f587-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl reconfigure

#. Restart all |pushy| components:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl restart

#. Verify the installation:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl test


|pushy| Client
=====================================================
To set up the |pushy| client:

#. Download and install the package appropriate for the target node's platform and operating system
#. Configure the |pushy| client to run as a background daemon; the |windows| MSI will configure the |pushy| client to run as a service
#. Configure the command whitelist for each node, which describes the list of commands the |pushy| client will execute when it runs; requests to execute commands that are not in the whitelist will be rejected. Add the following to the |client rb| file on each node that will be managed by |pushy|:

   .. code-block:: ruby

      whitelist({ "command1" => "value", "command2" => "value", "chef-client" => "chef-client" })

   where ``command1`` and ``command2`` represent the actual commands that are in the whitelist.

   ``chef-client`` is the only job available, after the initial install. To support more jobs, they must be added to the whitelist. To add more jobs, add the following attribute to a node, role, or environment:

   .. code-block:: ruby

      ['opscode_push_jobs']['whitelist']

   with a value of a hash similar to:

   .. code-block:: ruby

      { 
        "chef-client": "sudo chef-client", 
        "chef_client_with_special_run_list": "sudo chef-client -o recipe[special_recipe]",
        "remove_everything": "rm -rf /" 
      }

#. Verify that the |pushy| client is running as a daemon or as a service.


|pushy| Workstation
=====================================================
To set up the |pushy| workstation, install the |subcommand knife pushy| plugin. Once installed, the following subcommands will be available: ``knife node status``, ``knife job list``, ``knife job start``, and ``knife job status``. 



push-jobs Cookbook
=====================================================
The push-jobs cookbook can be used to configure |pushy| as a client on a target node. Download the cookbook. Modify the ``node'opscode_push_jobs''whitelist'`` attribute in the default attributes file to add new entries to the whitelist. Add this cookbook to the run-list for any node that will be managed by |pushy|. After the |chef client| runs have occurred on nodes that will run the |pushy| client, run the ``knife node status show all nodes`` command to verify that nodes are running |pushy|.


