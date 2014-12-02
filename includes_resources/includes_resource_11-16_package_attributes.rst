.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_downgrade``
     - |resource yum_package| resource only. |allow_downgrade| Default value: ``false``.
   * - ``arch``
     - |resource yum_package| resource only. |architecture package|
   * - ``flush_cache``
     - |resource yum_package| resource only. |flush_cache| Default value: ``{ :before => false, :after => false }``.

       .. note:: |flush_cache yum_cache|
   * - ``gem_binary``
     - |gem_binary resource package|
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``response_file``
     - Optional. |response_file|
   * - ``source``
     - Optional. |source resource package|
   * - ``version``
     - |version package|
