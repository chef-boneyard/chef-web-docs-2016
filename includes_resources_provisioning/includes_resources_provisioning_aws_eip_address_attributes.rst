.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``associate_to_vpc``
     - Use to associate an elastic IP address to a virtual network that is defined in |amazon vpc|.
   * - ``chef_server``
     - |provisioning_server|
   * - ``driver``
     - |driver_provisioning|
   * - ``machine``
     - Use to specify the xxxxx.
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of an elastic IP address. 
   * - ``public_ip``
     - Use to specify the public IP address to associate with a |chef| resource. This will default to the ``name`` of the resource block if that value is an IP address. If an IP address is already allocated to an |amazon aws| account, |chef| will ensure that it is linked.
