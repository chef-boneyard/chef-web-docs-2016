=====================================================
Custom LWRPs
=====================================================

.. include:: ../../includes_lwrp/includes_lwrp.rst

The following sections describe the structure, syntax, and options available for both lightweight resources and lightweight providers:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`lwrp_custom_resource`
     - A lightweight resource defines custom actions and attributes.
   * - :doc:`lwrp_custom_provider`
     - Many lightweight providers are built using only core |chef| resources, such as |resource file|, |resource cookbook_file|, |resource template|, and so on. These types of resources use recipes to tell |chef| when to use core resources during a |chef| run.
   * - :doc:`lwrp_custom_provider_ruby`
     - Some lightweight providers are built using custom |ruby| code.

.. warning:: It is recommended to not mix core |chef| resources with custom resources in the same lightweight provider. This helps ensure the proper processing of core |chef| resources that have been embedded into the resource collection during the |chef| run.

File Locations
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Compare Platform and Lightweight Resources
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_compared_to_platform_resource.rst
