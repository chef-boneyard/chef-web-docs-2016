.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|kitchen| uses a driver plugin architecture to enable |kitchen| to simulate testing on cloud providers, such as |amazon ec2|, |openstack|, and |rackspace|. Each driver is responsible for managing a virtual instance of that platform so that it may be used by |kitchen| during cookbook testing.

Most drivers have driver-specific configuration settings that must be added to the |kitchen yml| file before |kitchen| will be able to use that platform during cookbook testing. Some popular drivers:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Driver Plugin
     - Description
   * - `kitchen-all <https://rubygems.org/gems/kitchen-all>`_
     - A driver for everything, or "all the drivers in a single Rubygem".
   * - `kitchen-bluebox <https://rubygems.org/gems/kitchen-bluebox>`_
     - A driver for |bluebox|.
   * - `kitchen-cloudstack <https://rubygems.org/gems/kitchen-cloudstack>`_
     - A driver for |cloudstack|.
   * - `kitchen-digitalocean <https://rubygems.org/gems/kitchen-digitalocean>`_
     - A driver for |digital ocean|.
   * - `kitchen-docker <https://rubygems.org/gems/kitchen-docker>`_
     - A driver for Docker.
   * - `kitchen-ec2 <https://rubygems.org/gems/kitchen-ec2>`_
     - A driver for |amazon ec2|.
   * - `kitchen-fog <https://rubygems.org/gems/kitchen-fog>`_
     - A driver for |fog|.
   * - `kitchen-gce <https://rubygems.org/gems/kitchen-gce>`_
     - A driver for |google compute engine|.
   * - `kitchen-openstack <https://rubygems.org/gems/kitchen-openstack>`_
     - A driver for |openstack|.
   * - `kitchen-rackspace <https://rubygems.org/gems/kitchen-rackspace>`_
     - A driver for |rackspace|.
   * - `kitchen-vagrant <https://rubygems.org/gems/kitchen-vagrant>`_
     - A driver for |vagrant|.

















