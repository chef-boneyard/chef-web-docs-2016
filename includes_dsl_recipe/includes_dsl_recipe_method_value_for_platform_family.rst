.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``value_for_platform_family`` method can be used in a recipe to use a hash to select a particular value based on the ``node['platform_family']`` attribute that is detected by |ohai| during every |chef| run. The syntax for the ``value_for_platform_family`` method is as follows:

.. code-block:: ruby

   value_for_platform( { platform_family => value } )

where ``platform_family`` is a comma-separated list, each specifying a platform family, such as |fedora|, |suse|, or |redhat enterprise linux|, and ``value`` specifies the value that will be used if the node's platform family matches ``value_for_platform_family``. If each value only has a single platform, then the syntax is like the following:

.. code-block:: ruby

   value_for_platform(
     "platform" => { "version" => "value" },
     "platform" => { "version" => "value" },
     "platform" => "value"
   )

but when each value has more than one platform, the syntax changes to:

.. code-block:: ruby

   value_for_platform(
     ["platform", "platform", "platform", "platform" ] => "value",
     ["platform", "platform"] => "value",
     "default" => "value"
   )

For example, for |redhat enterprise linux|, |fedora|, and |suse| platform families, the package will be "httpd-devel" and for the |debian| family the package will be "apache2-dev":

.. code-block:: ruby

   package = value_for_platform_family(
     ["rhel", "fedora", "suse"] => "httpd-devel",
      "debian" => "apache2-dev"
   )

