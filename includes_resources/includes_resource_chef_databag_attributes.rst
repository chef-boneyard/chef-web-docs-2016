.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

``chef_server``
   |chef_server_url|

``ignore_failure``
   **Ruby Types:** TrueClass, FalseClass

   |ignore_failure| Default value: ``false``.

``name``
   |name data_bag|

``notifies``
   **Ruby Type:** Symbol, 'Chef::Resource[String]'

   |notifies|

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst

``retries``
   **Ruby Type:** Integer

   |retries| Default value: ``0``.

``retry_delay``
   **Ruby Type:** Integer

   |retry_delay| Default value: ``2``.

``subscribes``
   **Ruby Type:** Symbol, 'Chef::Resource[String]'

   |subscribes|

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

   |subscribes timers|
