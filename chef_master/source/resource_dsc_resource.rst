=====================================================
dsc_resource
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_dsc_common_overview.rst

.. include:: ../../includes_resources/includes_resource_dsc_resource.rst

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_resource| resource with |chef|.

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_resource_syntax.rst

.. include:: ../../includes_resources/includes_resource_dsc_common_compare_syntax.rst

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