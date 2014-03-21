.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``chef_server``
     - |chef_server_url|
   * - ``complete``
     - Use to specify if this resource defines an environment completely. When ``true``, any attribute not specified by this resource will be reset to default attribute values.
   * - ``cookbook_versions``
     - The cookbook versions used with the environment. Default value: ``{}``.
   * - ``default_attributes``
     - |attribute_type default| Default value: ``{}``.
   * - ``description``
     - |description environment|
   * - ``name``
     - |name environment|
   * - ``override_attributes``
     - |attribute_type override| Default value: ``{}``.
   * - ``raw_json``
     - The |chef client| as |json| data. For example:
       
       .. code-block:: javascript
       
       {
         "name":"backend",
         "description":"",
         "cookbook_versions":{},
         "json_class":"Chef::Environment",
         "chef_type":"environment",
         "default_attributes":{},
         "override_attributes":{}
       }

