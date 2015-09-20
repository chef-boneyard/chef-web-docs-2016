.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |cookbook push jobs| cookbook at https://github.com/chef-cookbooks/push-jobs is used by the |chef client| to configure |push jobs| as a client on a target node. This cookbook is also used to define the whitelist, which is a list of commands that |push jobs| may execute when it runs. A command that is not in the whitelist will not be executed by |push jobs|. The |cookbook push jobs| cookbook should be managed like any other cookbook, i.e. "downloaded from |github|, managed using version source control, and uploaded to the |chef server|". To manage nodes using |push jobs|, add the |cookbook push jobs| cookbook to the run-list for each node that will be managed using |push jobs|.

The whitelist is defined using the ``node['opscode_push_jobs']['whitelist']`` attribute located in the default attributes file:

.. code-block:: ruby

   default['push_jobs']['whitelist']   = { 
        "job_name" => "command", 
        "job_name" => "command", 
        "chef-client" => "chef-client" }

where ``job_name`` represents each of the jobs that are defined in the whitelist and ``command`` is the command line that will be run on the target node. The ``chef-client`` job is the only job in the whitelist after the initial installation of |push jobs|.

After the whitelist is defined, add the jobs to the |client rb| file on each node that will be managed by |push jobs|:

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
     "sv restart apache" 
   }

By default, any attempt to run a |push jobs| command other than ``chef-client`` will be rejected with ``nack``. For example:

.. code-block:: bash

   $ knife job start some_command my_node

will return something similar to:

.. code-block:: bash

   Started.  Job ID: 67079444838d123456f0c1ea614c1fcaa0f
   Failed.
   command:     some_command
   created_at:  Tue, 29 Oct 2013 21:22:59 GMT
   id:          67079444425fdcdd0c1ea614c1fcaa0f
   nodes:
     nacked: my_node
   run_timeout: 3600
   status:      nacked
   updated_at:  Tue, 29 Oct 2013 21:23:04 GMT

To add commands, simply append them to the whitelist for roles, environments, and nodes. For example, to set all of the nodes in the ``dev`` environment to accept a |push jobs| command to restart |apache|, run the following command:

.. code-block:: bash

   $ knife edit environments/dev.json

and then update the default attributes to include something like:

.. code-block:: javascript

   {
     "name": "dev",
     "description": "The development environment",
     "default_attributes": {
       "push_jobs": {
         "whitelist": {
           "chef-client": "chef-client",
           "chef_client_with_special_run_list": "sudo chef-client -o recipe[special_recipe]",
           "restart_apache": "sv restart apache"
         }
       }
     }
   }

after which the following command can be run against nodes in the ``dev`` environment to restart |apache|:

.. code-block:: bash

   $ knife job start restart_apache NODE1 NODE2 ...

where ``NODE1 NODE2 ...`` defines a list of individual nodes against which that command is run.

