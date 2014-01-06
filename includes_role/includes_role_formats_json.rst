.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |json| format for roles maps directly to the domain-specific |ruby| format: same settings, attributes, and values, and a similar structure and organization. For example:

.. code-block:: javascript

   {
     "name": "webserver",
     "chef_type": "role",
     "json_class": "Chef::Role",
     "default_attributes": {
       "apache2": {
         "listen_ports": [ 
           "80",
           "443"
         ]
       }
     },
     "description": "The base role for systems that serve HTTP traffic",
     "run_list": [
       "recipe[apache2]",
       "recipe[apache2::mod_ssl]",
       "role[montior]"
     ],
     "env_run_lists" : {
       "production" : [],
       "preprod" : [],
       "dev": [
         "role[base]",
         "recipe[apache]",
         "recipe[apache::copy_dev_configs]",
       ],
        "test": [
         "role[base]",
         "recipe[apache]"
       ]
      },
     "override_attributes": {
       "apache2": {
         "max_children": "50"
       }
     }
   }

The |json| format has two additional settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_type``
     - |json dsl role chef type|
   * - ``json_class``
     - |json dsl role json class|
