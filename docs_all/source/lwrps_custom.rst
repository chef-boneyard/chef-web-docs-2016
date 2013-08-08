=====================================================
Custom Lightweight Resources
=====================================================

.. include:: ../../includes_lwrp/includes_lwrp.rst

The following sections describe the structure, syntax, and options available for both lightweight resources and lightweight providers:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - `Lightweight Resources <http://docs.opscode.com/lwrp_custom_resource.html>`_
     - A lightweight resource defines custom actions and attributes.
   * - `Lightweight Providers w/Chef Resources <http://docs.opscode.com/lwrp_custom_provider.html>`_
     - Many lightweight providers are built using only core resources, such as |resource file|, |resource cookbook_file|, |resource template|, and so on. These types of resources use recipes to tell the |chef client| when to use core resources during a |chef client| run.
   * - `Lightweight Providers w/Custom Ruby <http://docs.opscode.com/lwrp_custom_provider_ruby.html>`_
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