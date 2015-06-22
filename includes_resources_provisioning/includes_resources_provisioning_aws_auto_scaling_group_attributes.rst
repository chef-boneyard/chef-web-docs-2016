.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``availability_zones``
     - Use to specify an array of availability zones to be associated with this auto scaling group. For example: ``['us-west-1a', 'us-west-1b', 'us-west-1c']``.
   * - ``desired_capacity``
     - Use to specify the desired number of machines in the auto scaling group. For example: ``2``.
   * - ``launch_configuration``
     - Use to specify the name of a launch configuration.
   * - ``load_balancers``
     - Use to specify the name of a load balancer.
   * - ``max_size``
     - Use to specify the maximum number of machines in the auto scaling group. For example: ``5``.
   * - ``min_size``
     - Use to specify the minimim number of machines in the auto scaling group. For example: ``1``.
   * - ``name``
     - Use to specify the name of the auto scaling group.
   * - ``options``
     - Use to specify a |ruby hash| of options to be applied to this auto scaling group.
