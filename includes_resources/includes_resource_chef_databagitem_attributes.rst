.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``chef_server``
     - |chef_server_url|
   * - ``complete``
     - Use to specify if this resource defines a data bag item completely. When ``true``, any attribute not specified by this resource will be reset to default attribute values.
   * - ``encrypt``
     - Use to specify whether encryption is used for a data bag item.
   * - ``encryption_version``
     - |data_bag_decrypt_minimum_version|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``raw_data``
     - Use to create a data bag from a local file from ``./data_bags/bag_name/file``.
   * - ``raw_json``
     - The data bag item as |json| data. For example:
       
       .. code-block:: javascript
       
          {
            "id": "adam",
            "real_name": "Adam Brent Jacob"
          }
