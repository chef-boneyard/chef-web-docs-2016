.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A per-environment run-list is a run-list that is associated with a role and a specific environment. More than one environment can be specified in a role, but each specific environment may be associated with only one run-list. If a run-list is not specified, the default run-list will be used. For example::

   {
     "name": "webserver",
     "default_attributes": {
     },
     "json_class": "Chef::Role",
     "env_run_lists": {
       "production": [],
       "preprod": [],
       "test": [ "role[base]", "recipe[apache]", "recipe[apache::copy_test_configs]" ],
       "dev": [ "role[base]", "recipe[apache]", "recipe[apache::copy_dev_configs]" ]
       },
     "run_list": [ "role[base]", "recipe[apache]" ],
     "description": "The webserver role",
     "chef_type": "role",
     "override_attributes": {
     }
   }

where:

* ``webserver`` is the name of the role
* ``env_run_lists`` is a hash of per-environment run-lists for ``production``, ``preprod``, ``test``, and ``dev``
* ``production`` and ``preprod`` use the default run-list because they do not have a per-environment run-list
* ``run_list`` defines the default run-list
