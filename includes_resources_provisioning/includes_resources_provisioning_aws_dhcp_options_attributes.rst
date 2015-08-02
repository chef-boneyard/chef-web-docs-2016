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
   * - ``dhcp_options_id``
     - Use to specify the identifier for the the |dhcp| options set.
   * - ``domain_name``
     - Use to specify the domain name. For example: ``example.com``.
   * - ``domain_name_servers``
     - Use to specify an array that contains up to four IP addresses for domain name servers. Default value: ``AmazonProvidedDNS``. For example: ``%w(8.8.8.8 8.8.4.4)``.
   * - ``driver``
     - |driver_provisioning|
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of the |dhcp| options set.
   * - ``netbios_name_servers``
     - Use to specify an array that contains up to four IP addresses of |netbios| name servers. For example: ``%w(8.8.8.8 8.8.4.4)``.
   * - ``netbios_node_type``
     - Use to specify the |netbios| node type. Possible values: ``1``, ``2``, ``4``, or ``8``. Recommended value: ``2``.
   * - ``ntp_servers``
     - Use to specify an array that contains up to four IP addresses for |ntp| servers. For example: ``%w(8.8.8.8 8.8.4.4)``.
