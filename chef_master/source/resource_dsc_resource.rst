=====================================================
dsc_resource
=====================================================

.. warning:: This page discusses functionality that is available for preview via the https://github.com/opscode-cookbooks/dsc cookbook. This functionality adds the ability to use Powershell DSC resources in Chef and is planned to be included in a future update of the chef-client. For now, please download the cookbook and try this new feature out. Please provide feedback about this resource to that cookbook repository.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_dsc_common_overview.rst

.. include:: ../../includes_resources/includes_resource_dsc_resource.rst

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_resource| resource with |chef|.

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_resource_syntax.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_resource_attributes.rst

Examples
=====================================================

**Open a Zip file**

.. code-block:: ruby

   dsc_resource 'example' do
      resource_name :archive
      property :ensure, 'Present'
      property :path, "C:\Users\Public\Documents\example.zip"
      property :destination, "C:\Users\Public\Documents\ExtractionPath"
    end