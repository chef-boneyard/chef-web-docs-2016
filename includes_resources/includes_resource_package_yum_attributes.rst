.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_downgrade``
     - |allow_downgrade|
   * - ``arch``
     - |architecture package|
   * - ``flush_cache()``
     - |flush_cache| Default value: ``{ :before => false, :after => false }``.

       .. include:: ../../includes_resources_common/includes_resources_common_package_yum_cache.rst

       For example:

       .. code-block:: ruby

          yum_package 'some-package' do
            #...
            flush_cache({ :before => false, :after => false })
            #...
          end

       .. note:: |flush_cache yum_cache|
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package_yum| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``source``
     - Optional. |source resource package|
   * - ``timeout``
     - |timeout|
   * - ``version``
     - |version package|



