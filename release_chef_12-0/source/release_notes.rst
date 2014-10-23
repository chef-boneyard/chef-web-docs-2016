=====================================================
Release Notes: |chef client| 12.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.0 and/or are changes from previous versions. The short version:

* **Ruby 1.9.3 (or higher)** |ruby| versions 1.8.7, 1.9.1, and 1.9.2 are no longer supported.
* **The chef-client supports the AIX platform** The |chef client| may now be used to configure nodes that are running on the |ibm aix| platform. The |resource service| resource supports starting, stopping, and restarting services that are managed by |ibm aix_src|, as well as managing all service states with |berkeley os|-based init systems. 
* **New bff_package resource** Use the |resource package_bff| resource to install packages on the |ibm aix| platform.
* **New homebrew_package resource** Use the |resource package_homebrew| resource to install packages on the |mac os x| platform. The |resource package_homebrew| resource replaces the |resource package_macports| resource as the default package installer.
* **New reboot resource** Use the |resource reboot| resource to reboot a node during or at the end of a |chef client| run.
* **New windows_service resource** Use the |resource service_windows| resource to manage services on the |windows| platform.
* **New --bootstrap-template option** Use the ``--bootstrap-template`` option to install the |chef client| with a bootstrap template. Specify the name of a template such as ``chef-full`` or specify the path to a custom bootstrap template. This option deprecates the ``--distro`` and ``--template-file`` options.
* **New SSL options for bootstrap operations** The |subcommand knife bootstrap| subcommand has new options that support |ssl| with bootstrap operations. Use the ``--[no-]node-verify-api-cert`` option to to perform |ssl| validation of the connection to the |chef server|. Use the ``--node-ssl-verify-mode`` option to validate |ssl| certificates.
* **New format options for knife status** Use the ``--medium`` and ``--long`` options to include attributes in the output, and to format that output as |json|.
* **New fsck_device attribute for mount resource** The |resource mount| resource supports |fsck| devices for the |solaris| platform with the ``fsck_device`` attribute.
* **New settings for metadata.rb** The |metadata rb| file has two new settings: ``issues_url`` and ``source_url``. These are used to capture the source location and issues tracking location for a cookbook and are also used with |supermarket|. In addition, the ``name`` setting is now **required**.
* **Dropped query string for http_request GET and HEAD requests** |http_request query_string|
* **New Recipe DSL methods** The |dsl recipe| has three new methods: ``shell_out``, ``shell_out!``, and ``shell_out_with_systems_locale``.
* **File specificy updates** File specificity for the |resource template| and |resource cookbook_file| resources support using the ``source`` attribute to define an explicit lookup path as an array.
* **Improved user password security for the user resource, Mac OS X platform** The |resource user| resource now supports salted password hashes for |mac os x| 10.7 or higher. Use the ``iterations`` and ``salt`` attributes to calculate SALTED-SHA512 password shadow hashes for |mac os x| version 10.7 and SALTED-SHA512-PBKDF2 password shadow hashes for version 10.8 (and higher).

* **xxxxx** xxxxx

|ibm aix| Platform Support
-----------------------------------------------------
The |chef client| may now be used to configure nodes that are running on the |ibm aix| platform. The |resource service| resource supports starting, stopping, and restarting services that are managed by |ibm aix_src|, as well as managing all service states with |berkeley os|-based init systems.

**New provider**

The |resource service| resource has a new provider:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Service::AixInit``
     - ``service``
     - The provider that is used with the |ibm aix| platforms. Use the ``service`` short name to start, stop, and restart services with |ibm aix_src|. Use the ``Chef::Provider::Service::AixInit`` long name to manage services with |berkeley os|-based init systems.

**Enable a service on AIX using the mkitab command**

.. include:: ../../release_chef_12-0/step_resource_service_aix_mkitab.rst


bff_package
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_package_bff.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


homebrew_package
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Install a package**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_install.rst

**Specify the Homebrew user with a UUID**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_uuid.rst

**Specify the Homebrew user with a string**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_string.rst


reboot
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_service_reboot.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Reboot a node immediately**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_immediately.rst

**Reboot a node at the end of a |chef client| run**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_request.rst

**Cancel a reboot**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_cancel.rst


windows_service
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_service_windows.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Start a service manually**

.. include:: ../../release_chef_12-0/step_resource_service_windows_manual_start.rst


``knife bootstrap`` Settings
-----------------------------------------------------
The following options are new:

``--[no-]node-verify-api-cert``
   |ssl_verify_mode_verify_api_cert| If this option is not specified, the setting for ``verify_api_cert`` in the configuration file is applied.

``--node-ssl-verify-mode PEER_OR_NONE``
   |ssl_verify_mode|
 
   |ssl_verify_mode_verify_none|

   |ssl_verify_mode_verify_peer| This is the recommended setting.

   If this option is not specified, the setting for ``ssl_verify_mode`` in the configuration file is applied.

``-t TEMPLATE``, ``--bootstrap-template TEMPLATE``
   |template bootstrap| Default value: ``chef-full``, which installs the |chef client| using the |omnibus installer| on all supported platforms.

   .. note:: The ``--distro`` and ``--template-file`` options are deprecated.


``knife status`` Settings
-----------------------------------------------------
The following options are new:

``-l``, ``--long``
   |long|

``-m``, ``--medium``
   |medium|


``fsck_device`` Attribute
-----------------------------------------------------
The following attribute is new for the |resource mount| resource:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``fsck_device``
     - |fsck_device| Default value: ``-``.

|metadata rb| Settings
-----------------------------------------------------
The following settings are new:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``issues_url``
     - |url cookbook_issues| For example:

       .. code-block:: ruby

          source_url "https://github.com/opscode-cookbooks/chef-client/issues"

   * - ``source_url``
     - |url cookbook_source| For example:

       .. code-block:: ruby

          source_url "https://github.com/opscode-cookbooks/chef-client"

.. warning:: The ``name`` attribute is now a required setting in the |metadata rb| file.

http_request Actions
-----------------------------------------------------
|http_request query_string|

|dsl recipe|
-----------------------------------------------------
The following methods have been added to the |dsl recipe|: ``shell_out``, ``shell_out!``, and ``shell_out_with_systems_locale``.

``shell_out``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_dsl_recipe_method_shell_out.rst

``shell_out!``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_dsl_recipe_method_shell_out_bang.rst

``shell_out_with_systems_locale``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_dsl_recipe_method_shell_out_with_systems_locale.rst

File Specificity
-----------------------------------------------------
The pattern for file specificity depends on two things: the lookup path and the source attribute. The first pattern that matches is used:

#. /host-$fqdn/$source
#. /$platform-$platform_version/$source
#. /$platform/$source
#. /default/$source
#. /$source

Use an array with the ``source`` attribute to define an explicit lookup path. For example:

.. code-block:: ruby

   file '/conf.py' do
     source ["#{node.chef_environment}.py", 'conf.py']
   end

Or:

.. code-block:: ruby

   template '/test' do
     source ["#{node.chef_environment}.erb", 'default.erb']
   end

|mac os x| User Passwords
-----------------------------------------------------
The following attributes are new for the |resource user| resource:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``iterations``
     - |iterations|
   * - ``salt``
     - |salt| |mac os x| version 10.7 uses SALTED-SHA512 and version 10.8 (and higher) uses SALTED-SHA512-PBKDF2 to calculate password shadow hashes. 

**Use SALTED-SHA512 passwords**

.. include:: ../../release_chef_12-0/step_resource_user_password_shadow_hash_salted_sha512.rst

**Use SALTED-SHA512-PBKDF2 passwords**

.. include:: ../../release_chef_12-0/step_resource_user_password_shadow_hash_salted_sha512_pbkdf2.rst

Changelog
=====================================================
https://github.com/opscode/chef/blob/11-stable/CHANGELOG.md

.. What's Fixed
.. =====================================================
.. The following bugs were fixed:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. What's Improved
.. =====================================================
.. The following improvements were made:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. New Features
.. =====================================================
.. The following features were added:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx