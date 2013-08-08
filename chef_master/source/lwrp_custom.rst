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
   * - :doc:`Lightweight Resources </lwrp_custom_resource>`
     - A lightweight resource defines custom actions and attributes.
   * - :doc:`Lightweight Providers w/Core Resources </lwrp_custom_provider>`
     - Many lightweight providers are built using only core resources, such as |resource file|, |resource cookbook_file|, |resource template|, and so on. These types of resources use recipes to tell the |chef client| when to use core resources during a |chef client| run.
   * - :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`
     - Some lightweight providers are built using custom |ruby| code.

.. warning:: It is recommended to not mix platform resources with custom resources in the same lightweight provider. This helps ensure the proper processing of core resources that have been embedded into the resource collection during the |chef client| run.

File Locations
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Platform vs. Lightweight
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_compared_to_platform_resource.rst

|opscode|-maintained
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_opscode_maintained.rst

More Reading
=====================================================
Doug Ireton (a community member) has a blog with a nice series on LWRPs:

* Part 1: http://dougireton.com/blog/2012/12/31/creating-an-lwrp/
* Part 2: http://dougireton.com/blog/2013/01/07/creating-an-lwrp-part-2/
* Part 3: http://dougireton.com/blog/2013/01/13/creating-an-lwrp-part-3/