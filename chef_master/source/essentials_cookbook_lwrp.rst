=====================================================
About Lightweight Resources and Providers
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_lwrp_file_locations`
     - Lightweight resources and providers are loaded from files that are saved in cookbook sub-directories.
   * - :doc:`essentials_cookbook_lwrp_compare_platform_and_lightweight`
     - Lightweight resources are much less complicated than platform resources.
   * - :doc:`essentials_cookbook_lwrp_example`
     - Creating a lightweight resource involves a few steps, a few files, and a cookbook.
   * - :doc:`Lightweight Resources Reference </lwrp>`
     - There are many lightweight resources that are found in cookbooks maintained by |opscode|.

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

All lightweight resources share the same set of common functionality:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_lwrp_resources_syntax`
     - A lightweight resource is an abstract interface that specifies one (or more) actions that can be taken, one (or more) attributes, and then for each attribute a validation rule that defines how each attribute can be applied.
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


.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_lwrp_providers_actions`
     - Actions are defined as list of keywords in a resource.
   * - :doc:`essentials_cookbook_lwrp_providers_extend`
     - A lightweight provider can extend another provider class.
   * - :doc:`essentials_cookbook_lwrp_provider_use_default`
     - If a lightweight resource is used in a recipe, and the provider attribute is omitted, |chef| will look for a lightweight provider of the same name as the resource in the same cookbook by default.

.. toctree::
   :hidden:

   
   essentials_cookbook_lwrp_compare_platform_and_lightweight
   essentials_cookbook_lwrp_example
   essentials_cookbook_lwrp_file_locations
   
   essentials_cookbook_lwrp_resources_syntax
   essentials_cookbook_lwrp_resources_common_actions
   essentials_cookbook_lwrp_resources_common_attributes
   essentials_cookbook_lwrp_resources_common_conditionals
   essentials_cookbook_lwrp_resources_common_notifications
   essentials_cookbook_lwrp_resources_common_relative_paths

   essentials_cookbook_lwrp_provider_use_default
   essentials_cookbook_lwrp_providers_actions
   essentials_cookbook_lwrp_providers_extend