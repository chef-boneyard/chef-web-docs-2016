.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The ``push-jobs`` cookbook is used by the |chef client| to configure |pushy| as a client on a target node. This cookbook is also used to define the whitelist, which is a list of commands that |pushy| may execute when it runs. A command that is not in the whitelist will not be executed by |pushy|.

The ``push-jobs`` cookbook should be managed like any other cookbook, i.e. "downloaded from |github|, managed using version source control, and uploaded to the |chef server|".

The ``push-jobs`` cookbook should be added to the run-list of any node that will also be managed using |pushy|.

WHITELISTS

By default, for security purposes, if you attempt to run any push command other than ``chef-client``, the command will be rejected with ``nack``, indicating the node was unwilling to run the job:

.. code-block:: bash

  > knife job start some-other-command mynode
  Started.  Job ID: 67079444838dacdd0c1ea614c1fcaa0f
  Failed.
  command:     some-other-command
  created_at:  Tue, 29 Oct 2013 21:22:59 GMT
  id:          67079444838dacdd0c1ea614c1fcaa0f
  nodes:
    nacked: mynode
  run_timeout: 3600
  status:      nacked
  updated_at:  Tue, 29 Oct 2013 21:23:04 GMT

For security purposes, jobs and commands pushy clients will only run "chef-client" by default, and will reject any other command.  In order to add other commands, you append to the whitelist.  To do this, you set role, environment or node attributes called push_jobs.whitelist.  For example, if you want all nodes in your ``dev`` environment to accept a command to restart apache, you could run ``knife edit environments/dev.json`` and add the attributes:

.. code-block:: json

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

Once you do this, you can run ``knife job start restart_apache NODE1 NODE2 ...`` against nodes in the dev environment and it will run ``sv restart apache`` on those nodes.
