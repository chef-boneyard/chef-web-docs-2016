.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``comment``
     - **Ruby Type:** String

       |comment user|
   * - ``force``
     - **Ruby Types:** TrueClass, FalseClass

       |force_remove_user|

       .. warning:: Using this attribute may leave the system in an inconsistent state. For example, a user account will be removed even if the user is logged in. A user's home directory will be removed, even if that directory is shared by multiple users.
   * - ``gid``
     - **Ruby Types:** String, Integer

       |id group|
   * - ``home``
     - **Ruby Type:** String

       |home_directory|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``manage_home``
     - **Ruby Types:** TrueClass, FalseClass

       |user homedir|

       |user homedir_create|

       |user homedir_modify|
   * - ``non_unique``
     - **Ruby Types:** TrueClass, FalseClass

       |non_unique_user|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``password``
     - **Ruby Type:** String

       |password shadow_hash|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``shell``
     - **Ruby Type:** String

       |shell|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``supports``
     - **Ruby Type:** Hash

       |supports user| Default value: ``:manage_home => false, :non_unique => false``.
   * - ``system``
     - **Ruby Types:** TrueClass, FalseClass

       |system user|
   * - ``uid``
     - **Ruby Types:** String, Integer

       |user uid|
   * - ``username``
     - **Ruby Type:** String

       |name user| |resource_block_default| |see syntax|
