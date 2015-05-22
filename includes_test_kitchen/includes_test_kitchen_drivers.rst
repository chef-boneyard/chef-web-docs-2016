.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|kitchen| uses a driver plugin architecture to enable |kitchen| to simulate testing on cloud providers, such as |amazon ec2|, |openstack|, and |rackspace|, and also on non-cloud platforms, such as |windows|. Each driver is responsible for managing a virtual instance of that platform so that it may be used by |kitchen| during cookbook testing.

.. note:: The |chef dk| includes the ``kitchen-vagrant`` driver.

Most drivers have driver-specific configuration settings that must be added to the |kitchen yml| file before |kitchen| will be able to use that platform during cookbook testing. For information about these driver-specific settings, please refer to the driver-specific documentation.

Some popular drivers:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Driver Plugin
     - Description
   * - `kitchen-all <https://rubygems.org/gems/kitchen-all>`_
     - A driver for everything, or "all the drivers in a single |ruby| |gem|".
   * - `kitchen-bluebox <https://github.com/blueboxgroup/kitchen-bluebox>`_
     - A driver for |bluebox|.
   * - `kitchen-cloudstack <https://github.com/test-kitchen/kitchen-cloudstack>`_
     - A driver for |cloudstack|.
   * - `kitchen-digitalocean <https://github.com/test-kitchen/kitchen-digitalocean>`_
     - A driver for |digital ocean|.
   * - `kitchen-docker <https://github.com/portertech/kitchen-docker>`_
     - A driver for |docker|.
   * - `kitchen-dsc <https://github.com/test-kitchen/kitchen-dsc>`_
     - A driver for |windows powershell| |windows powershell_dsc|.
   * - `kitchen-ec2 <https://github.com/test-kitchen/kitchen-ec2>`_
     - A driver for |amazon ec2|.
   * - `kitchen-fog <https://github.com/TerryHowe/kitchen-fog>`_
     - A driver for |fog|.
   * - `kitchen-gce <https://github.com/anl/kitchen-gce>`_
     - A driver for |google compute engine|.
   * - `kitchen-hyperv <https://github.com/test-kitchen/kitchen-hyperv>`_
     - A driver for |microsoft hyperv|.
   * - `kitchen-joyent <https://github.com/test-kitchen/kitchen-joyent>`_
     - A driver for |joyent|.
   * - `kitchen-opennebula <https://github.com/test-kitchen/kitchen-opennebula>`_
     - A driver for |opennebula|.
   * - `kitchen-openstack <https://github.com/test-kitchen/kitchen-openstack>`_
     - A driver for |openstack|.
   * - `kitchen-pester <https://github.com/test-kitchen/kitchen-pester>`_
     - A driver for |pester|, a testing framework for |windows|.
   * - `kitchen-rackspace <https://github.com/test-kitchen/kitchen-rackspace>`_
     - A driver for |rackspace|.
   * - `kitchen-vagrant <https://github.com/test-kitchen/kitchen-vagrant>`_
     - A driver for |vagrant|. The default driver packaged with the |chef dk|.
