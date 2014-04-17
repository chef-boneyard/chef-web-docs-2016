.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
      * - ``aws_access_key``
     - The user name for the secret access key for the API endpoint used with |amazon ec2|.
   * - ``aws_secret_access_key``
     - The password for the secret access key for the API endpoint used with |amazon ec2|.
   * - ``resource_id``
     - One or more resources whose tags will be modified. This value may be a single ID as a string or multiple IDs as an array. If this value is not specified, then the ``name`` attribute for each resource will be used.
   * - ``tags``
     - Required. A |ruby hash| of key value pairs that are used as resource tags. For example: ``{ "Name" => "foo", "Environment" => "node.chef_environment" }``.
