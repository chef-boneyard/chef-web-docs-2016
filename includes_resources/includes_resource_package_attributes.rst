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
   * - ``default_release``
     - |resource package_apt| resource only. |default_release apt| For example: ``stable``.
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
   * - ``gem_binary``
     - |gem_binary resource package|
   * - ``homebrew_user``
     - |resource package_homebrew| resource only. |name homebrew_user|
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. (See "Syntax" section above for more information.)
   * - ``provider``
     - Optional. |provider resource_parameter| (See "Providers" section below for more information.)
   * - ``response_file``
     - |resource package_apt| and |resource package_dpkg| resources only. |response_file|
   * - ``response_file_variables``
     - |resource package_apt| and |resource package_dpkg| resources only. |response_file variables|
   * - ``source``
     - Optional. |source resource package|

       .. note:: |source resource package aix|
   * - ``timeout``
     - |timeout|
   * - ``version``
     - |version package|
