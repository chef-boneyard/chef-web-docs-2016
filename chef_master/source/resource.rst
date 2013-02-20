=====================================================
About Resources and Providers
=====================================================

.. note:: If you want to see all of the information about |chef| resources in a single document, see: http://docs.opscode.com/chef/resources.html. (This document also includes all of the lightweight resources that exist in |opscode|-maintained cookbooks.) If you want to read topics about individual resources, keep reading down this page (all of the individual resources are listed in a table just below). If you want to read topics about individual resources, see: http://docs.opscode.com/lwrp.html.

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
   * - :doc:`Actions </resource_common_actions>`
     - The ``:nothing`` action can be used with any resource or lightweight resource.
   * - :doc:`Attributes </resource_common_attributes>`
     - The ``ignore_failure``, ``provider``, ``retries``, ``retry_delay``, and ``supports`` attributes can be used with any resource or lightweight resources.
   * - :doc:`Conditions </resource_common_conditionals>`
     - The ``not_if`` and ``only_if`` conditional executions can be used to put additional guards around certain resources so that they are only run when the condition is met. 
   * - :doc:`Notifications </resource_common_notifications>`
     - The ``notifies`` and ``subscribes`` notifications can be used with any resource.
   * - :doc:`Relative Paths </resource_common_relative_paths>`
     - The ``#{ENV['HOME']}`` relative path can be used with any resource.

|chef| Resources
-----------------------------------------------------
|chef| includes the following resources (each provider is discussed within the context of its associated resource):

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Resource
     - Description
   * - :doc:`resource_cookbook_file`
     - |resource desc cookbook_file|
   * - :doc:`resource_cron`
     - |resource desc cron|
   * - :doc:`resource_deploy`
     - |resource desc deploy|
   * - :doc:`resource_directory`
     - |resource desc directory|
   * - :doc:`resource_env`
     - |resource desc env|
   * - :doc:`resource_erlang_call`
     - |resource desc erlang_call|
   * - :doc:`resource_execute`
     - |resource desc execute|
   * - :doc:`resource_file`
     - |resource desc file|
   * - :doc:`resource_group`
     - |resource desc group|
   * - :doc:`resource_http_request`
     - |resource desc http_request|
   * - :doc:`resource_ifconfig`
     - |resource desc ifconfig|
   * - :doc:`resource_link`
     - |resource desc link|
   * - :doc:`resource_log`
     - |resource desc log|
   * - :doc:`resource_mdadm`
     - |resource desc mdadm|
   * - :doc:`resource_mount`
     - |resource desc mount|
   * - :doc:`resource_ohai`
     - |resource desc ohai|
   * - :doc:`resource_package`
     - |resource desc package|
   * - :doc:`resource_powershell_script`
     - |resource desc powershell_script|
   * - :doc:`resource_remote_directory`
     - |resource desc remote_directory|
   * - :doc:`resource_remote_file`
     - |resource desc remote_file|
   * - :doc:`resource_route`
     - |resource desc route|
   * - :doc:`resource_ruby_block`
     - |resource desc ruby_block|
   * - :doc:`resource_scm`
     - |resource desc scm|
   * - :doc:`resource_script`
     - |resource desc script|
   * - :doc:`resource_service`
     - |resource desc service|
   * - :doc:`resource_template`
     - |resource desc template|
   * - :doc:`resource_user`
     - |resource desc user|
   * - :doc:`resource_yum`
     - |resource desc yum|


.. toctree::
   :hidden:

   resource_common
   resource_common_actions
   resource_common_attributes
   resource_common_conditionals
   resource_common_notifications
   resource_common_relative_paths

   resource_batch
   resource_cookbook_file
   resource_cron
   resource_deploy
   resource_directory
   resource_env
   resource_erlang_call
   resource_execute
   resource_file
   resource_group
   resource_http_request
   resource_ifconfig
   resource_link
   resource_log
   resource_mdadm
   resource_mount
   resource_ohai
   resource_package
   resource_powershell_script
   resource_registry_key
   resource_remote_directory
   resource_remote_file
   resource_route
   resource_ruby_block
   resource_scm
   resource_script
   resource_service
   resource_template
   resource_user
   resource_yum







