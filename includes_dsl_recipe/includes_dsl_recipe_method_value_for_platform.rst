.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``value_for_platform`` method can be used in a recipe to use a hash to select a particular value based on the ``node['platform']`` and ``node['platform_version']`` attributes that are detected by |ohai| during every |chef| run. The syntax for the ``value_for_platform`` method is as follows:

.. code-block:: ruby

   value_for_platform( ["platform"] => { ["version"] => value })

where ``"platform"`` is a comma-separated list, each specifying a platform, such as |redhat|, |suse|, or |fedora|, ``version`` specifies the version of that platform, and ``value`` specifies the value that will be used if the node's platform matches the ``value_for_platform`` method. For example, the following will set the ``package_name`` |ruby| variable to "httpd" for the |redhat| family of distributions and to "apache2" for the |debian| family of distributions:

.. code-block:: ruby

   package_name = value_for_platform(
     ["centos", "redhat", "suse", "fedora" ] => {
      "default" => "httpd"
     },
     ["ubuntu", "debian"] => {
      "default" => "apache2"
     }
   )

The following example shows that a package will be set to "apache-couchdb" for |open bsd| platforms, will be set to "dev-db/couchdb" for |gentoo| platforms, and to "couchdb" for all other platforms:

.. code-block:: ruby

   package = value_for_platform(
     "openbsd" => { "default" => "apache-couchdb" },
     "gentoo" => { "default" => "dev-db/couchdb" },
     "default" => "couchdb"
   )



