.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_downgrade``
     - **Ruby Types:** TrueClass, FalseClass

       |resource yum_package| resource only. |allow_downgrade| Default value: ``false``.
   * - ``arch``
     - **Ruby Types:** String, Array

       |resource yum_package| resource only. |architecture package|
   * - ``default_release``
     - **Ruby Type:** String

       |resource package_apt| resource only. |default_release apt| For example: ``stable``.
   * - ``flush_cache``
     - **Ruby Type:** Array

       |flush_cache| Default value: ``[ :before, :after ]``. The value may also be a |ruby hash|: ``( { :before => true/false, :after => true/false } )``.

       .. include:: ../../includes_resources_common/includes_resources_common_package_yum_cache.rst

       As an array:

       .. code-block:: ruby

          yum_package 'some-package' do
            #...
            flush_cache [ :before ]
            #...
          end

       and as a |ruby hash|:

       .. code-block:: ruby

          yum_package 'some-package' do
            #...
            flush_cache( { :after => true } )
            #...
          end

       .. note:: |flush_cache yum_cache|
   * - ``gem_binary``
     - **Ruby Type:** String

       |gem_binary resource package|
   * - ``homebrew_user``
     - **Ruby Types:** String, Integer

       |resource package_homebrew| resource only. |name homebrew_user|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``options``
     - **Ruby Type:** String

       |command options|
   * - ``package_name``
     - **Ruby Types:** String, Array

       |name package| |resource_block_default| |see syntax|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``response_file``
     - **Ruby Type:** String

       |resource package_apt| and |resource package_dpkg| resources only. |response_file|
   * - ``response_file_variables``
     - **Ruby Type:** Hash

       |resource package_apt| and |resource package_dpkg| resources only. |response_file variables|
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``source``
     - **Ruby Type:** String

       Optional. |source resource package|

       .. note:: |source resource package aix|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``timeout``
     - **Ruby Types:** String, Integer

       |timeout|
   * - ``version``
     - **Ruby Types:** String, Array

       |version package|
