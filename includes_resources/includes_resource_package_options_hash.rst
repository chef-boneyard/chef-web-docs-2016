.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If an explicit ``gem_binary`` parameter is not being used with the ``gem_package`` resource, it is preferable to provide the install options as a hash. This approach allows the provider to install the |gem| without needing to spawn an external |gem| process. 

The following |rubygems| options are available for inclusion within a hash and are passed to the |rubygems| DependencyInstaller:

* ``:env_shebang``
* ``:force``
* ``:format_executable``
* ``:ignore_dependencies``
* ``:prerelease``
* ``:security_policy``
* ``:wrappers``

For more information about these options, see the |rubygems| documentation: http://rubygems.rubyforge.org/rubygems-update/Gem/DependencyInstaller.html. 

To install a gem with a hash of options

.. code-block:: ruby

   gem_package "bundler" do
     options(:prerelease => true, :format_executable => false)
   end
