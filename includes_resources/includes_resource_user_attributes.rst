.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``comment``
     - **Ruby Type:** String

       |comment user|
   * - ``force``
     - **Ruby Types:** TrueClass, FalseClass

       |force_remove_user|

       .. warning:: .. include:: ../../includes_notes/includes_notes_user_resource_force_property.rst
   * - ``gid``
     - **Ruby Types:** String, Integer

       |id group|
   * - ``group``
     - **Ruby Types:** String, Integer

       The ``group`` property is an alias of the ``gid`` property.
   * - ``home``
     - **Ruby Type:** String

       |home_directory|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``iterations``
     - **Ruby Type:** Integer

       |mac os x| platform only, 10.8 (or higher). |iterations|
   * - ``manage_home``
     - **Ruby Types:** TrueClass, FalseClass

       |user homedir|

       |user homedir_create|

       |user homedir_modify|
   * - ``non_unique``
     - **Ruby Types:** TrueClass, FalseClass

       |non_unique_user|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

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
   * - ``salt``
     - **Ruby Type:** String

       |mac os x| platform only, 10.7 or higher. |salt| |mac os x| version 10.7 uses SALTED-SHA512 and version 10.8 (and higher) uses SALTED-SHA512-PBKDF2 to calculate password shadow hashes. 
   * - ``shell``
     - **Ruby Type:** String

       |shell|
   * - ``supports``
     - **Ruby Type:** Hash

       |supports user| Default value: ``:manage_home => false, :non_unique => false``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``system``
     - **Ruby Types:** TrueClass, FalseClass

       |system user|
   * - ``uid``
     - **Ruby Types:** String, Integer

       |user uid|
   * - ``username``
     - **Ruby Type:** String

       |name user| |resource_block_default| |see syntax|