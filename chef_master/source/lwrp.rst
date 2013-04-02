=====================================================
About Lightweight Resources
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

A lightweight resource is a way to extend |chef| so that it can support custom actions in a way that is similar to a resource. A lightweight resource:

* Has its own file location (the ``/resources`` cookbook sub-directory)
* Defines a set of actions
* For each action, defines a set of attributes, conditions, and so on
* Relies on a lightweight provider (located in the ``/providers`` cookbook sub-directory)

A lightweight resource is used in a recipe in much the same way as a traditional resource. During the |chef| run, |chef| will use the lightweight provider to take the necessary steps to bring the system into the desired state.

Read more about how to create lightweight resources :doc:`here </essentials_cookbook_lwrp>`; learn how to use the lightweight resources available in cookbooks maintained by |opscode| by clicking one of the links below

Common Functionality
=====================================================
All lightweight resources (and resources!) have common functionality:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_lwrp_resources_syntax`
     - A lightweight resource is an abstract interface that specifies one (or more) actions that can be taken, one (or more) attributes, and then for each attribute a validation rule that defines how each attribute can be applied.
   * - :doc:`essentials_cookbook_lwrp_file_locations`
     - Lightweight resources and providers are loaded from files that are saved in cookbook sub-directories.
   * - :doc:`essentials_cookbook_lwrp_resources_common_actions`
     - Use the ``:nothing`` action to do nothing.
   * - :doc:`essentials_cookbook_lwrp_resources_common_attributes`
     - Attributes are available for timeouts, to set the current working directory, specify environment variables, groups, and users.
   * - :doc:`essentials_cookbook_lwrp_resources_common_conditionals`
     - A conditional execution can be used to put additional guards around certain resources so that they are only run when the condition is met.
   * - :doc:`lwrp_common_inline_compile`
     - Execute a lightweight resource as part of a self-contained |chef| run during resource compilation.
   * - :doc:`essentials_cookbook_lwrp_resources_common_notifications`
     - Lightweight resources can notify each other to take certain actions.
   * - :doc:`essentials_cookbook_lwrp_resources_common_relative_paths`
     - The environment home relative path can be set in a lightweight resource.

|opscode|-maintained
=====================================================
Custom resources and providers can also be created using the |lwrp| DSL. |opscode| provides several cookbooks that define some commonly used |lwrp|. To use the lightweight resources provided by |opscode| the cookbook that defines it must also be used. These lightweight resources can be used within recipes to increase automation opportunities.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - :doc:`apt </lwrp_apt>`
     - |cookbook name apt|
   * - :doc:`aws </lwrp_aws>`
     - |cookbook name aws|
   * - :doc:`bluepill </lwrp_bluepill>`
     - |cookbook name bluepill|
   * - :doc:`chef_handler </lwrp_chef_handler>`
     - |cookbook name chef_handler|
   * - :doc:`daemontools </lwrp_daemontools>`
     - |cookbook name daemontools|
   * - :doc:`djbdns </lwrp_djbdns>`
     - |cookbook name djbdns|
   * - :doc:`dmg </lwrp_dmg>`
     - |cookbook name dmg|
   * - :doc:`dynect </lwrp_dynect>`
     - |cookbook name dynect|
   * - :doc:`firewall </lwrp_firewall>`
     - |cookbook name firewall|
   * - :doc:`freebsd </lwrp_freebsd>`
     - |cookbook name freebsd|
   * - :doc:`gunicorn </lwrp_gunicorn>`
     - |cookbook name gunicorn|
   * - :doc:`homebrew </lwrp_homebrew>`
     - |cookbook name homebrew|
   * - :doc:`iis </lwrp_iis>`
     - |cookbook name iis|
   * - :doc:`maven </lwrp_maven>`
     - |cookbook name maven|
   * - :doc:`mysql </lwrp_mysql>`
     - |cookbook name mysql|
   * - :doc:`nagios </lwrp_nagios>`
     - |cookbook name nagios|
   * - :doc:`pacman </lwrp_pacman>`
     - |cookbook name pacman|
   * - :doc:`php </lwrp_php>`
     - |cookbook name php|
   * - :doc:`powershell </lwrp_powershell>`
     - |cookbook name powershell|
   * - :doc:`python </lwrp_python>`
     - |cookbook name python|
   * - :doc:`rabbitmq </lwrp_rabbitmq>`
     - |cookbook name rabbitmq|
   * - :doc:`riak </lwrp_riak>`
     - |cookbook name riak|
   * - :doc:`samba </lwrp_samba>`
     - |cookbook name samba|
   * - :doc:`sudo </lwrp_sudo>`
     - |cookbook name sudo|
   * - :doc:`supervisor </lwrp_supervisor>`
     - |cookbook name supervisor|
   * - :doc:`transmission </lwrp_transmission>`
     - |cookbook name transmission|
   * - :doc:`users </lwrp_users>`
     - |cookbook name users|
   * - :doc:`webpi </lwrp_webpi>`
     - |cookbook name webpi|
   * - :doc:`windows </lwrp_windows>`
     - |cookbook name windows|
   * - :doc:`yum </lwrp_yum>`
     - |cookbook name yum|
   * - :doc:`zenoss </lwrp_zenoss>`
     - |cookbook name zenoss|



.. toctree::
   :hidden:

   lwrp_common_inline_compile

   lwrp_apt
   lwrp_aws
   lwrp_bluepill
   lwrp_chef_handler
   lwrp_daemontools
   lwrp_djbdns
   lwrp_dmg
   lwrp_dynect
   lwrp_firewall
   lwrp_freebsd
   lwrp_gunicorn
   lwrp_homebrew
   lwrp_iis
   lwrp_maven
   lwrp_mysql
   lwrp_nagios
   lwrp_pacman
   lwrp_php
   lwrp_powershell
   lwrp_python
   lwrp_rabbitmq
   lwrp_riak
   lwrp_samba
   lwrp_sudo
   lwrp_supervisor
   lwrp_transmission
   lwrp_users
   lwrp_webpi
   lwrp_windows
   lwrp_yum
   lwrp_zenoss






