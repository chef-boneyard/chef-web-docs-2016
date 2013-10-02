.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_downgrade``
     - |allow_downgrade| Default value: ``false``.
   * - ``arch``
     - |architecture package| Default value: ``nil``. This attribute is only available for the |resource yum_package| resource.
   * - ``flush_cache``
     - |resource yum_package| resource only. |flush_cache| Default value: ``{ :before => false, :after => false }``.
   * - ``gem_binary``
     - |gem_binary resource package|
   * - ``options``
     - |command options| Can be used with |apt|, |debian dpkg|, |gentoo|, |rpm|, and |rubygems|. Default value: ``nil``.
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``response_file``
     - Optional. |response_file| Default value: ``nil``.
   * - ``source``
     - Optional. |source resource package|
   * - ``version``
     - |version package| Default value: ``nil``.
