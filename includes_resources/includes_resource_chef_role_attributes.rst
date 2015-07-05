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
     - Use to specify if this resource defines a role completely. When ``true``, any attribute not specified by this resource will be reset to default attribute values.
   * - ``default_attributes``
     - |attribute_type default| Default value: ``{}``.
   * - ``description``
     - |description role|
   * - ``env_run_lists``
     - The environment-specific run-list for a role. Default value: ``[]``. For example: ``["env_run_lists[webserver]"]``
   * - ``name``
     - The name of the role.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``override_attributes``
     - |attribute_type override| Default value: ``{}``.
   * - ``raw_json``
     - The role as |json| data. For example:
       
       .. code-block:: javascript
       
         {
           "name": "webserver",
           "chef_type": "role",
           "json_class": "Chef::Role",
           "default_attributes": {},
           "description": "A webserver",
           "run_list": [
             "recipe[apache2]"
           ],
           "override_attributes": {}
         }

   * - ``run_list``
     - |run-list| Default value: ``[]``. For example: ``["recipe[default]","recipe[apache2]"]``








