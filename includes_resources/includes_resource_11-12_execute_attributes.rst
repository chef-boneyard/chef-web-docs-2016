.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``command``
     - **Ruby Types:** String, Array

       |name command| |resource_block_default| |see syntax|

       .. note:: .. include:: ../../includes_notes/includes_notes_execute_resource_multiple_commands.rst
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
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``path``
     - **Ruby Type:** Array

       |path resource execute| The default value uses the system path.

       .. warning:: .. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst

          For example:

          .. code-block:: ruby

             execute 'mycommand' do
               environment 'PATH' => "/my/path/to/bin:#{ENV['PATH']}"
             end

   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``returns``
     - **Ruby Types:** Integer, Array

       |return_value cmd| Default value: ``0``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``timeout``
     - **Ruby Types:** Integer, Float

       |timeout command| Default value: ``3600``.
   * - ``user``
     - **Ruby Types:** String, Integer

       |user command|
   * - ``umask``
     - **Ruby Types:** String, Integer

       |umask|
