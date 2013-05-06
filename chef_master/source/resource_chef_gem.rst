=====================================================
chef_gem
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_chef_gem.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_chef_gem_syntax.rst

Gem Package Options
=====================================================
.. include:: ../../includes_resources/includes_resource_package_options.rst

Specify with Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_hash.rst

**Example**

.. code-block:: ruby

   chef_gem "bundler" do
     options(:prerelease => true, :format_executable => false)
   end

Specify with String
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_string.rst

**Example**

.. code-block:: ruby

   chef_gem "nokogiri" do
     gem_binary("/opt/ree/bin/gem")
     options("--prerelease --no-format-executable")
   end

Specify with .gemrc File
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_gemrc.rst

**Example**

.. code-block:: ruby

   chef_gem "nokogiri" do
     gem_binary "gem"
   end

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_chef_gem_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_chef_gem_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_chef_gem_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a gems file for use in recipes**

.. code-block:: ruby

   chef_gem "right_aws" do
     action :install
   end
   
   require 'right_aws'

