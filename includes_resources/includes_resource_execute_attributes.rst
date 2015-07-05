.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - **Ruby Types:** String, Array

       |name command| |resource_block_default| |see syntax|

       .. note:: Use the |resource execute| resource to run a single command. Use multiple |resource execute| resource blocks to run multiple commands.
   * - ``creates``
     - **Ruby Type:** String

       |creates file_exists|
   * - ``cwd``
     - **Ruby Type:** String

       |cwd run_command|
   * - ``environment``
     - **Ruby Type:** Hash

       |environment variables|
   * - ``group``
     - **Ruby Types:** String, Integer

       |group command|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``path``
     - **Ruby Type:** Array

       |path resource execute| The default value uses the system path.

       .. warning:: .. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``returns``
     - **Ruby Types:** Integer, Array

       |return_value cmd| Default value: ``0``.
   * - ``sensitive``
     - **Ruby Types:** TrueClass, FalseClass

       |sensitive| Default value: ``false``.
   * - ``timeout``
     - **Ruby Types:** Integer, Float

       |timeout command| Default value: ``3600``.
   * - ``user``
     - **Ruby Types:** String, Integer

       |user command|
   * - ``umask``
     - **Ruby Types:** String, Integer

       |umask|
