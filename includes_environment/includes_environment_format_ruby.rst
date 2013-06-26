.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Domain-specific |ruby| attributes for environments include the following:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``cookbook``
     - |ruby dsl cookbook| For example:
       ::

          cookbook "couchdb", "< 11.0.0"

       Or:
       ::

          cookbook "my_rails_app", "< 1.2.0"

       Or:
       ::
  
          cookbook "gems", "< 1.4.0"
   * - ``cookbook_versions``
     - |ruby dsl cookbook version| For example:
       ::

          cookbook_versions({
            "couchdb"=>"= 11.0.0",
            "my_rails_app"=>"~> 1.2.0"
          })
   * - ``default_attributes``
     - |ruby dsl default attribute| For example, to specify that a node that has the attribute ``apache2`` should listen on ports 80 and 443 (unless ports are already specified):
       ::

          default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }
   * - ``description``
     - |ruby dsl description| For example:
       ::

          description 'The development environment'
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

A |ruby| file for each non-default environment must exist in the ``environments/`` subdirectory of the |chef| repository. (If the repository does not have this subdirectory, then create it.) Each |ruby| file should have the .rb suffix. The complete environment has the following syntax:

.. code-block:: ruby

   name "environment_name"
   description "environment_description"
   cookbook OR cookbook_versions  "cookbook" OR "cookbook" => "cookbook_version"
   default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
   override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }

where both default and override attributes are optional and either a cookbook or cookbook versions (one or more) are specified. For example, an environment named "dev" that uses the "couchdb" cookbook (version 11.0.0 or higher) that listens on ports 80 and 443:

.. code-block:: ruby

   name "dev"
   description "The development environment"
   cookbook_versions  "couchdb" => "= 11.0.0"
   default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }

Or (using the same scenario) to specify a version constraint for only one cookbook:

.. code-block:: ruby

   cookbook "couchdb", "= 11.0.0"

More than one cookbook version can be specified:

.. code-block:: ruby

   cookbook_versions({
     "couchdb"=>"= 11.0.0",
     "my_rails_app"=>"~> 1.2.0"
   })

Attributes are optional and can be set at the default and override levels. These will be processed according to attribute precedence. An environment attribute will be applied to all nodes within the environment, except in places where it is overridden by an attribute with higher precedence. For example:

.. code-block:: ruby

   default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }

will have all nodes in the environment (``node[:apache2][:listen_ports]``) set to "80" and "443" unless they were overridden by an attribute with higher precedence. For example:

.. code-block:: ruby

   override_attributes "apache2" => { "listen_ports" => [ "99", "999" ] }

