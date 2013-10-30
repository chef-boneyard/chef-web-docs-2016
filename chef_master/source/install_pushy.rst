=====================================================
Install |pushy|
=====================================================

|pushy| is installed on the same physical hardware as the |chef server oec| server (version 11.0.1 or higher), as a client on all nodes that will be managed by |pushy|, and then on at least one management workstation


|pushy| Server
=====================================================
To set up the |pushy| server:

#. Contact |opscode| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.0.1. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-push-jobs-server_0.0.1+20130307070157.git.98.c04f587-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl reconfigure

#. Restart the |pushy| components:

   .. code-block:: bash

      $ private-chef-ctl restart opscode-pushy-server

#. Verify the installation:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl test


|pushy| Client
=====================================================
To set up the |pushy| client:

#. Add the ``push-jobs`` cookbook to the run-list for each of the nodes on which |pushy| is to be configured
#. Run the |chef client| to configure |pushy| for that node
#. Verify that the |pushy| client is running as a daemon or as a service:

   .. code-block:: bash

      $ knife node status node_name

   for a specific node and:

   .. code-block:: bash

      $ knife node status

   for all nodes.


|pushy| Workstation
=====================================================
To set up the |pushy| workstation, install the |subcommand knife pushy| plugin. Once installed, the following subcommands will be available: ``knife node status``, ``knife job list``, ``knife job start``, and ``knife job status``. 


push-jobs Cookbook
-----------------------------------------------------
The ``push-jobs`` cookbook is used by the |chef client| to configure |pushy| as a client on a target node. This cookbook is also used to define the whitelist, which is a list of commands that |pushy| may execute when it runs. A command that is not in the whitelist will not be executed by |pushy|.

The ``push-jobs`` cookbook should be managed like any other cookbook, i.e. "downloaded from |github|, managed using version source control, and uploaded to the |chef server|".

The ``push-jobs`` cookbook should be added to the run-list of any node that will also be managed using |pushy|.

The whitelist is defined using the ``node'opscode_push_jobs''whitelist'`` in the default attributes file:

.. code-block:: ruby

   default['push_jobs']['whitelist']   = { 
        "job_name" => "command", 
        "job_name" => "command", 
        "chef-client" => "chef-client" }

where ``job_name`` represents each of the jobs that are defined in the whitelist and ``command`` is the command line that will be run on the target node. The ``chef-client`` job is the only job in the whitelist after the initial installation of |pushy|.

After the whitelist is defined, add the jobs to the |client rb| file on each node that will be managed by |pushy|:

.. code-block:: ruby

   whitelist({ "job_name" => "command", 
               "job_name" => "command", 
               "chef-client" => "chef-client" 
             })

For example:

.. code-block:: ruby

   { 
     "chef-client": "sudo chef-client", 
     "chef_client_with_special_run_list": "sudo chef-client -o recipe[special_recipe]",
     "remove_everything": "rm -rf /" 
   }
