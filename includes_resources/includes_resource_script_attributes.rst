.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - **Ruby Type:** String

       |code quoted_string|
   * - ``command``
     - **Ruby Types:** String, Array

       |name command| |resource_block_default| |see syntax|
   * - ``creates``
     - **Ruby Type:** String

       |creates file_exists|
   * - ``cwd``
     - **Ruby Type:** String

       |cwd|
   * - ``environment``
     - **Ruby Type:** Hash

       |environment variables|
   * - ``flags``
     - **Ruby Type:** String

       |flags|
   * - ``group``
     - **Ruby Types:** String, Integer

       |group command|
   * - ``interpreter``
     - **Ruby Type:** String

       |interpreter|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``path``
     - **Ruby Type:** Array

       |path resource execute| The default value uses the system path.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``returns``
     - **Ruby Types:** Integer, Array

       |return_value cmd| Default value: ``0``.
   * - ``timeout``
     - **Ruby Types:** Integer, Float

       |timeout command| Default value: ``3600``.
   * - ``user``
     - **Ruby Types:** String, Integer

       |user command|
   * - ``umask``
     - **Ruby Types:** String, Integer

       |umask|
