.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_downgrade``
     - **Ruby Types:** TrueClass, FalseClass

       |allow_downgrade|
   * - ``arch``
     - **Ruby Types:** String, Array

       |architecture package|
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

       |name package_yum| |resource_block_default| |see syntax|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``source``
     - **Ruby Type:** String

       Optional. |source resource package|
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
