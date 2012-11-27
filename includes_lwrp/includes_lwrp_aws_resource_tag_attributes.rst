.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``aws_access_key``
     - |aws_access_key lwrp aws_resource_tag|
   * - ``aws_secret_access_key``
     - |aws_secret_access_key lwrp aws_resource_tag|
   * - ``resource_id``
     - One or more resources whose tags will be modified. This value may be a single ID as a string or multiple IDs as an array. If this value is not specified, then the ``name`` attribute for each resource will be used.
   * - ``tags``
     - Required. A hash of key value pairs that are used as resource tags. For example: ``{ "Name" => "foo", "Environment" => "node.chef_environment" }``.
