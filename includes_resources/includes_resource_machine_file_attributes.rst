.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``chef_server``
     - **Ruby Type:** Hash

       |chef_server_url|
   * - ``content``
     - |content file| The default behavior will not modify content.
   * - ``driver``
     - **Ruby Type:** Chef::Provisioning::Driver

       Use to specify the driver to be used for provisioning.
   * - ``group``
     - **Ruby Type:** String

       |windows group_identifier|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``local_path``
     - **Ruby Type:** String

       The local path to a file.
   * - ``machine``
     - **Ruby Type:** String

       Use to specify the machine type.
   * - ``mode``
     - **Ruby Type:** String

       |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|

   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``owner``
     - **Ruby Type:** String

       |owner windows security|
   * - ``path``
     - **Ruby Type:** String

       |path full_path_to_file| |resource_block_default| |see syntax|

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
