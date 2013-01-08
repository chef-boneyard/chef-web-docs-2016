=====================================================
About Resources and Providers
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_resources_syntax`
     - A resource is a |ruby| block with four components: a type, a name, one (or more) parameters (with attributes), and one (or more) actions.
   * - :doc:`essentials_cookbook_resources_providers`
     - Many resources are built-in to |chef|.
   * - :doc:`essentials_cookbook_resources_platform`
     - The ``Chef::Platform`` class maps providers to platforms (and platform versions).


.. toctree::
   :hidden:

   essentials_cookbook_resources_platform
   essentials_cookbook_resources_providers
   essentials_cookbook_resources_syntax

