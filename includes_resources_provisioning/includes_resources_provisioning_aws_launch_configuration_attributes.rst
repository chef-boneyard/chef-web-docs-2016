.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``aws_tags``
     - |aws_tag|

       .. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_attributes_aws_tag_example.rst
   * - ``chef_server``
     - |provisioning_server|
   * - ``driver``
     - |driver_provisioning|
   * - ``image``
     - Use to specify the |amazon ami|
   * - ``instance_type``
     - Use to specify the |amazon ami| instance type. For example: ``T2``, ``M4``, or ``C3``.
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of the |amazon ami|.
   * - ``options``
     - Use to specify a |ruby hash| that contains xxxxx. Default value: ``{ }``.
