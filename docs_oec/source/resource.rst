=====================================================
About Resources and Providers
=====================================================

.. note:: If you want to see all of the information about resources in a single document, see: http://docs.opscode.com/chef/resources.html. (This document also includes all of the lightweight resources that exist in |opscode|-maintained cookbooks.) If you want to read topics about individual resources, keep reading down this page (all of the individual resources are listed in a table just below). If you want to read topics about individual lightweight resources, see: http://docs.opscode.com/lwrp.html.

.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider_platform.rst

Common Functionality
-----------------------------------------------------
All resources share a set of common actions, attributes, conditional executions, notifications, and relative path options.

.. list-table::
   :widths: 160 440
   :header-rows: 1

   * - Common Item
     - Description
   * - `Actions <http://docs.opscode.com/resource_common.html#actions>`_
     - The ``:nothing`` action can be used with any resource or lightweight resource.
   * - `Attributes <http://docs.opscode.com/resource_common.html#attributes>`_
     - The ``ignore_failure``, ``provider``, ``retries``, ``retry_delay``, and ``supports`` attributes can be used with any resource or lightweight resources.
   * - `Conditions <http://docs.opscode.com/resource_common.html#conditionals>`_
     - The ``not_if`` and ``only_if`` conditional executions can be used to put additional guards around certain resources so that they are only run when the condition is met. 
   * - `Notifications <http://docs.opscode.com/resource_common.html#notifications>`_
     - The ``notifies`` and ``subscribes`` notifications can be used with any resource.
   * - `Relative Paths <http://docs.opscode.com/resource_common.html#relative-paths>`_
     - The ``#{ENV['HOME']}`` relative path can be used with any resource.
   * - `Windows File Security <http://docs.opscode.com/resource_common.html#windows-file-security>`_
     - The |resource template|, |resource file|, |resource remote_file|, |resource cookbook_file|, |resource directory|, and |resource remote_directory| resources support the use of inheritance and access control lists (ACLs) within recipes.
   * - `Run a Resource during Resource Compilation <http://docs.opscode.com/resource_common.html#run-from-resource-collection>`_
     - Sometimes a resource needs to be run before every other resource or after all resources have been added to the resource collection.


Resources
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_core.rst


.. toctree::
   :hidden:

   resource_apt_package
   resource_bash
   resource_batch
   resource_breakpoint
   resource_chef_gem
   resource_common

   resource_cookbook_file
   resource_cron
   resource_csh
   resource_deploy
   resource_directory
   resource_dpkg_package
   resource_easy_install_package
   resource_env
   resource_erlang_call
   resource_execute
   resource_file
   resource_freebsd_package
   resource_gem_package
   resource_git
   resource_group
   resource_http_request
   resource_ifconfig
   resource_ips_package
   resource_link
   resource_log
   resource_macports_package
   resource_mdadm
   resource_mount
   resource_ohai
   resource_package
   resource_pacman_package
   resource_perl
   resource_portage_package
   resource_powershell_script
   resource_python
   resource_registry_key
   resource_remote_directory
   resource_remote_file
   resource_rpm_package
   resource_route
   resource_ruby
   resource_ruby_block
   resource_scm
   resource_smartos_package
   resource_solaris_package
   resource_subversion
   resource_script
   resource_service
   resource_template
   resource_user
   resource_yum








