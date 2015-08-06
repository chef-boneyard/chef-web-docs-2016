.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``aws_tags``
     - **Ruby Type:** Hash

       |aws_tag|

       .. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_attributes_aws_tag_example.rst
   * - ``chef_server``
     - **Ruby Type:** Hash

       |provisioning_server|
   * - ``driver``
     - **Ruby Type:** Chef::Provisioning::Driver

       |driver_provisioning|
   * - ``enable_website_hosting``
     - **Ruby Type:** TrueClass, FalseClass

       Use to specify if an |amazon s3| bucket is configured for for static website hosting. Default value: ``false``.
   * - ``managed_entry_store``
     - **Ruby Type:** Chef::Provisioning::ManagedEntryStore

       |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - **Ruby Type:** String

       Use to specify the name of the |amazon s3| bucket.
   * - ``options``
     - **Ruby Type:** Hash

       Use to specify a |ruby hash| that contains options for this resource. Default value: ``{ }``.
   * - ``website_options``
     - **Ruby Type:** Hash

       Use to specify a |ruby hash| that contains details about support for the index and custom error documents. Default value: ``{ }``.
