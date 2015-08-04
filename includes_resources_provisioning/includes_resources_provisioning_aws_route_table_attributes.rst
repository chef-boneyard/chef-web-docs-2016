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
   * - ``ignore_route_targets``
     - Use to specify a regular expression that describes one (or more) route targets that should be ignored. This property uses a regular expression because the full identifier for the instance or network interface is not known ahead of time. For example, in many cases a route for network address translation will points at the network interface that is attached to the network address translation. For example: ``['^eni-']`` to ignore all network interface routes (the ID prefix for all network interface routes is ``eni``).
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of the route table.
   * - ``route_table_id``
     - Use to specify the identifier for the route table.
   * - ``routes``
     - Use to specify a |ruby hash| that contains all of the routes associated with a route table. The destination (on the left side of the ``=>``) must be a |cidr| block. The target (on the right side of the ``=>``) may be the identifier for an internet gateway, an instance name, the identifier for network interface, a |chef provisioning| machine name, or a |chef provisioning| resource. For example:

       .. code-block:: ruby

          main_routes {
            '10.0.0.0/8' => 'internal_vpn',
            '0.0.0.0/0' => :internet_gateway
          }

   * - ``virtual_private_gateways``
     - Use to specify an array that contains one (or more) virtual private gateway identifiers. For example:

       .. code-block:: ruby

          virtual_private_gateways ['vgw-abcd1234', 'vgw-abcd5678']

   * - ``vpc``
     - Required when creating a route table. Use to specify the |amazon vpc| to which this route table is associated. This may be the name of an ``aws_vpc`` resource block that exists elsewhere in a cookbook, an actual ``aws_vpc`` resource block that exists in this recipe, or the name of the main route table in |amazon vpc|.
