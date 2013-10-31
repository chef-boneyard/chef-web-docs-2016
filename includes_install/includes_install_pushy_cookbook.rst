.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

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
     "sv restart apache" 
   }
