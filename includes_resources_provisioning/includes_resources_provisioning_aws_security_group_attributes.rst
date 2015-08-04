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

       For example:

       .. code-block:: ruby

          aws_tags { :chef_type => 'aws_security_group' }

   * - ``chef_server``
     - |provisioning_server|
   * - ``description``
     - Use to specify a description for the |amazon aws| security group.
   * - ``driver``
     - |driver_provisioning|
   * - ``inbound_rules``
     - Use to specify inbound rules. Rules must be specified in one of the following formats:

       .. code-block:: ruby

          [
            { port: 22, protocol: :tcp, sources: [<source>, <source>, ...] }
          ]

       or:

       .. code-block:: ruby

          {
            <permitted_source> => <port>,
            ...
          }

       where

       * ``port`` is the port number or range. For example: ``80`` (number) or ``1024..2048`` (range)
       * ``protocol`` is the protocol to be used. For example: ``:http`` or ``:tcp``
       * ``sources`` is an IP address (or a |cidr| of IP addresses), a security group to be authorized, and/or a load balancer to be authorized. For example, IP addresses:

         .. code-block:: ruby

            inbound_rules '1.2.3.4' => 80

         .. code-block:: ruby

            inbound_rules '1.2.3.4/24' => 80

         Security groups:

         .. code-block:: ruby

            inbound_rules 'mysecuritygroup'

         .. code-block:: ruby

            inbound_rules { security_group: 'mysecuritygroup' }

         .. code-block:: ruby

            inbound_rules 'sg-1234abcd' => 80

         .. code-block:: ruby

            inbound_rules aws_security_group('mysecuritygroup') => 80

         .. code-block:: ruby

            inbound_rules AWS.ec2.security_groups.first => 80

         and load balancers:

         .. code-block:: ruby

            inbound_rules { load_balancer: 'myloadbalancer' } => 80

         .. code-block:: ruby

            inbound_rules 'elb-1234abcd' => 80

         .. code-block:: ruby

            inbound_rules load_balancer('myloadbalancer') => 80

         .. code-block:: ruby

            inbound_rules AWS.ec2.security_groups.first => 80

   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of the |amazon aws| security group.
   * - ``outbound_rules``
     - Use to specify outbound rules. Rules must be specified in one of the following formats:

       .. code-block:: ruby

          [
            { port: 22, protocol: :tcp, sources: [<source>, <source>, ...] }
          ]

       or:

       .. code-block:: ruby

          {
            <permitted_source> => <port>,
            ...
          }

       where

       * ``port`` is the port number or range. For example: ``80`` (number) or ``1024..2048`` (range)
       * ``protocol`` is the protocol to be used. For example: ``:http`` or ``:tcp``
       * ``sources`` is an IP address (or a |cidr| of IP addresses), a security group to be authorized, and/or a load balancer to be authorized. For example, IP addresses:

         .. code-block:: ruby

            outbound_rules '1.2.3.4' => 80

         .. code-block:: ruby

            outbound_rules '1.2.3.4/24' => 80

         Security groups:

         .. code-block:: ruby

            outbound_rules 'mysecuritygroup'

         .. code-block:: ruby

            outbound_rules { security_group: 'mysecuritygroup' }

         .. code-block:: ruby

            outbound_rules 'sg-1234abcd' => 80

         .. code-block:: ruby

            outbound_rules aws_security_group('mysecuritygroup') => 80

         .. code-block:: ruby

            outbound_rules AWS.ec2.security_groups.first => 80

         and load balancers:

         .. code-block:: ruby

            outbound_rules { load_balancer: 'myloadbalancer' } => 80

         .. code-block:: ruby

            outbound_rules 'elb-1234abcd' => 80

         .. code-block:: ruby

            outbound_rules load_balancer('myloadbalancer') => 80

         .. code-block:: ruby

            outbound_rules AWS.ec2.security_groups.first => 80

   * - ``security_group_id``
     - Use to specify the |amazon aws| security group identifier.
   * - ``vpc``
     - Use to specify the identifier for the |amazon vpc|.
