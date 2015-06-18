.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Having reviewed the architecture and deployment prerequisites, you should be ready to install |openstack chef|.

* Be sure to read and understand the prerequisites for installation
* Check out the |openstack chef_repo| from |github|
* Follow the |berkshelf| instructions to download all of the appropriate cookbooks
* Edit the environment that will be used
* Converge the nodes, controller first, then compute
* Log in to the |openstack horizon| dashboard and either install or download the private key
* Create a test node

An installation that uses |chef provisioning| is located `here <https://github.com/openstack/openstack-chef-repo>`_; the ``README.md`` file describes the setup.
