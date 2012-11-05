.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Domain-specific |ruby| attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``default_attributes``
     - |ruby dsl default attribute| For example, to specify that a node that has the attribute ``apache2`` should listen on ports 80 and 443 (unless ports are already specified):
       ::

          default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }
   * - ``description``
     - |ruby dsl description| For example:
       ::

          description 'The base role for systems that serve HTTP traffic'
   * - ``env_run_lists``
     - |ruby dsl environment run list| For example:
       ::

          env_run_lists "prod" => ["recipe[apache2]"], "staging" => ["recipe[apache2::staging]"
   * - ``name``
     - |ruby dsl name| For example:
       ::

          name 'dev01-24'
   * - ``override_attributes``
     - |ruby dsl override attribute| For example:
       ::

          override_attributes "apache2" => { "max_children" => "50" }

       The parameters in a |ruby| file are actually |ruby| method calls, so parentheses can be used to provide clarity when specifying numerous or deeply-nested attributes. For example::

          override_attributes(
            :apache2 => { 
              :prefork => { :min_spareservers => "5" }
            }
          )

       Or::

          override_attributes(
            :apache2 => {
              :prefork => { :min_spareservers => "5" }
            },
            :tomcat => {
              :worker_threads => "100"
            }
          )  
   * - ``run_list``
     - |ruby dsl run list| For example, the following run list:
       ::

          run_list "recipe[apache2]", "recipe[apache2::mod_ssl]", "role[monitor]"

       would apply the ``apache2`` recipe first, then the ``apache2::mod_ssl`` recipe, and then the ``role[monitor]`` recipe.

A |ruby| DSL file for each role must exist in the ``roles/`` subdirectory of the |chef| repository. (If the repository does not have this subdirectory, then create it using |knife|.) Each |ruby| file should have the .rb suffix. The complete roles |ruby| has the following syntax::

   name "role_name"
   description "role_description"
   run_list "recipe[name]", "recipe[name::attribute]", "recipe[name::attribute]"
   env_run_lists "name" => ["recipe[name]"], "environment_name" => ["recipe[name::attribute]"]
   default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
   override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }

where both default and override attributes are optional and at least one run-list (with at least one run-list item) is specified. For example, a role named "webserver" that has a run-list that defines actions for three different roles, and for certain roles takes extra steps (such as the "apache2" role listening on ports 80 and 443)::

   name "webserver"
   description "The base role for systems that serve HTTP traffic"
   run_list "recipe[apache2]", "recipe[apache2::mod_ssl]", "role[monitor]"
   env_run_lists "prod" => ["recipe[apache2]"], "staging" => ["recipe[apache2::staging]"], "_default" => []
   default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }
   override_attributes "apache2" => { "max_children" => "50" }