.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

``chef_server``
   |chef_server_url|

``complete``
   Use to specify if this resource defines a data bag item completely. When ``true``, any property not specified by this resource will be reset to default property values.

``encrypt``
   Use to specify whether encryption is used for a data bag item.

``encryption_version``
   |data_bag_decrypt_minimum_version|

``ignore_failure``
   **Ruby Types:** TrueClass, FalseClass

   |ignore_failure| Default value: ``false``.

``notifies``
   **Ruby Type:** Symbol, 'Chef::Resource[String]'

   |notifies|

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst

``raw_data``
   Use to create a data bag from a local file from ``./data_bags/bag_name/file``.

``raw_json``
   The data bag item as |json| data. For example:
       
   .. code-block:: javascript
       
      {
        "id": "adam",
        "real_name": "Adam Brent Jacob"
      }

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
