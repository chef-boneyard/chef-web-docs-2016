.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**Vagrant** (https://vagrantup.com) is a virtualization framework for managing development environments, it may be used for testing the All-in-One configuration in the |chef repo openstack|. |vagrant| is an unsupported external third-party tool that may be used with |chef|, but is not required for using the |chef repo openstack|.

Installation
------------

|vagrant| supports a number of virtualization and cloud back-ends. For our purposes |virtualbox| (https://www.virtualbox.org) is used.

Install |vagrant| 1.2.1 or later from packages. You may download it from https://downloads.vagrantup.com.

Our test configuration requires a number of |vagrant| plugins, install the following plugins in exactly this order:

.. code-block:: bash

   $ vagrant plugin install vagrant-omnibus
   $ vagrant plugin install vagrant-chef-zero
   $ vagrant plugin install vagrant-berkshelf

Vagrantfile
-----------

|vagrant| uses a **Vagrantfile** for managing its configuration. Within the |chef repo openstack| there is a Vagrantfile that configures the |virtualbox| virtual machine for our purposes. A few parts of that file are listed here:

.. code-block:: ruby

   Vagrant.require_plugin "vagrant-berkshelf"
   Vagrant.require_plugin "vagrant-chef-zero"
   Vagrant.require_plugin "vagrant-omnibus"

   Vagrant.configure("2") do |config|
     # Berkshelf plugin configuration
     config.berkshelf.enabled = true

     # Chef-Zero plugin configuration
     config.chef_zero.enabled = true
     config.chef_zero.chef_repo_path = "."

     # Omnibus plugin configuration
     config.omnibus.chef_version = :latest

This is enabling and configuring the use of the |berkshelf|, |chef zero| and |omnibus installer| plugins for |vagrant|.

.. code-block:: ruby

     # Port forwarding rules, for access to openstack services
     config.vm.network "forwarded_port", guest: 443, host: 8443     # dashboard-ssl
     config.vm.network "forwarded_port", guest: 4000, host: 4000    # chef-zero
     config.vm.network "forwarded_port", guest: 8773, host: 8773    # compute-ec2-api
     config.vm.network "forwarded_port", guest: 8774, host: 8774    # compute-api

This forwards ports from the |vagrant| virtual machine for accessing the |openstack| dashboard and APIs. You may also access the |chef zero| installation with a custom |knife rb| configuration file.

.. code-block:: ruby

     # OpenStack-related settings
     config.vm.network "private_network", ip: "33.33.33.60"
     config.vm.network "private_network", ip: "192.168.100.60"
     config.vm.provider "virtualbox" do |vb|
       vb.customize ["modifyvm", :id, "--cpus", 2]
       vb.customize ["modifyvm", :id, "--memory", 2048]
       vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
       vb.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"]
     end

This creates additional network cards and networks for the |vagrant| virtual machine and increases the available memory and CPUs.

.. code-block:: ruby

     chef_environment = "vagrant"
     chef_run_list = [ "role[allinone-compute]" ]

     # Ubuntu 12.04 Config
     config.vm.define :ubuntu1204 do |ubuntu1204|
       ubuntu1204.vm.hostname = "ubuntu1204"
       ubuntu1204.vm.box = "opscode-ubuntu-12.04"
       ubuntu1204.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"
       ubuntu1204.vm.provision :chef_client do |chef|
         chef.environment = chef_environment
         chef.run_list = chef_run_list.unshift("recipe[apt::cacher-client]")
       end
     end
   end

|vagrant| is configured to use the chef_client provisioner with the ``vagrant`` environment and the ``allinone-compute`` role for the ``run_list``. The |virtualbox| images used are provided by the Bento project (https://github.com/opscode/bento).

Environment
-----------

.. code-block:: ruby

   name "vagrant"
   description "Environment used in testing with Vagrant the upstream cookbooks and reference Chef repository. Defines the network and database settings to use with OpenStack. The networks will be used in the libraries provided by the osops-utils cookbook. This example is for FlatDHCP with 2 physical networks."

   override_attributes(
     "mysql" => {
       "allow_remote_root" => true,
       "root_network_acl" => "%"
     },
     "openstack" => {
       "developer_mode" => true,
       "identity" => {
         "catalog" => {
           "backend" => "templated"
         },
       },
       "image" => {
         "image_upload" => true,
         "upload_images" => ["cirros"],
         "upload_image" => {
           "cirros" => "https://launchpad.net/cirros/trunk/0.3.0/+download/cirros-0.3.0-x86_64-disk.img"
         },
         "identity_service_chef_role" => "allinone-compute"
       },
       "block-storage" => {
         "keystone_service_chef_role" => "allinone-compute"
       },
       "dashboard" => {
         "keystone_service_chef_role" => "allinone-compute"
       },
       "network" => {
         "rabbit_server_chef_role" => "allinone-compute"
       },
       "compute" => {
         "identity_service_chef_role" => "allinone-compute",
         "network" => {
           "fixed_range" => "192.168.100.0/24",
           "public_interface" => "eth2"
         },
         "config" => {
           "ram_allocation_ratio" => 5.0
         },
         "libvirt" => {
           "virt_type" => "qemu"
         },
         "networks" => [
           {
             "label" => "public",
             "ipv4_cidr" => "192.168.100.0/24",
             "num_networks" => "1",
             "network_size" => "255",
             "bridge" => "br100",
             "bridge_dev" => "eth2",
             "dns1" => "8.8.8.8",
             "dns2" => "8.8.4.4"
           }
         ]
       }
     }
   )

Vagrant Usage
-------------

From the |chef repo openstack|, launch the ``ubuntu1204`` virtual machine with |vagrant|. This will take several minutes as it does the ``chef-client`` run for the ``allinone-compute``.

.. code-block:: bash

    $ vagrant up ubuntu1204

SSH into the ``ubuntu1204`` virtual machine with |vagrant|.

.. code-block:: bash

    $ vagrant ssh ubuntu1204
    Welcome to Ubuntu 12.04.2 LTS (GNU/Linux 3.5.0-23-generic x86_64)

     * Documentation:  https://help.ubuntu.com/

    96 packages can be updated.
    48 updates are security updates.

    Last login: Sat May 11 05:55:03 2013 from 10.0.2.2
    vagrant@ubuntu1204:~$

All commands after this are actually run from within the VM. ``sudo`` to the ``root`` user and source the ``openrc`` file to configure the shell environment for |openstack|.

.. code-block:: bash

    vagrant@ubuntu1204:~$ sudo su -
    root@ubuntu1204:~# source /root/openrc

There are several basic checks that may be run to establish that the |openstack| deployment is operating properly. List the |openstack nova| compute services that are running:

.. code-block:: bash

    root@ubuntu1204:~# nova service-list
    +------------------+------------+----------+---------+-------+----------------------------+
    | Binary           | Host       | Zone     | Status  | State | Updated_at                 |
    +------------------+------------+----------+---------+-------+----------------------------+
    | nova-cert        | ubuntu1204 | internal | enabled | up    | 2013-11-25T04:35:04.000000 |
    | nova-compute     | ubuntu1204 | nova     | enabled | up    | 2013-11-25T04:35:07.000000 |
    | nova-conductor   | ubuntu1204 | internal | enabled | up    | 2013-11-25T04:35:00.000000 |
    | nova-consoleauth | ubuntu1204 | internal | enabled | up    | 2013-11-25T04:35:05.000000 |
    | nova-network     | ubuntu1204 | internal | enabled | up    | 2013-11-25T04:35:07.000000 |
    | nova-scheduler   | ubuntu1204 | internal | enabled | up    | 2013-11-25T04:35:00.000000 |
    +------------------+------------+----------+---------+-------+----------------------------+

.. List the Quantum Network services that are running:
.. # quantum agent-list
.. List the Nova Compute hypervisors that are running:
.. # nova hypervisor-list

Note that ``nova-network`` is listed, this will be updated soon and replaced by Quantum Network services. Next list the Identity catalog.

.. code-block:: bash

    root@ubuntu1204:~# keystone catalog
    Service: compute
    +-------------+-----------------------------------------------------------+
    |   Property  |                           Value                           |
    +-------------+-----------------------------------------------------------+
    |   adminURL  | http://127.0.0.1:8774/v2/c32e2a09541648f7b6ab67475a88103b |
    | internalURL | http://127.0.0.1:8774/v2/c32e2a09541648f7b6ab67475a88103b |
    |  publicURL  | http://127.0.0.1:8774/v2/c32e2a09541648f7b6ab67475a88103b |
    |    region   |                         RegionOne                         |
    +-------------+-----------------------------------------------------------+
    Service: network
    +-------------+-----------------------+
    |   Property  |         Value         |
    +-------------+-----------------------+
    |   adminURL  | http://127.0.0.1:9696 |
    | internalURL | http://127.0.0.1:9696 |
    |  publicURL  | http://127.0.0.1:9696 |
    |    region   |       RegionOne       |
    +-------------+-----------------------+
    Service: image
    +-------------+--------------------------+
    |   Property  |          Value           |
    +-------------+--------------------------+
    |   adminURL  | http://127.0.0.1:9292/v2 |
    | internalURL | http://127.0.0.1:9292/v2 |
    |  publicURL  | http://127.0.0.1:9292/v2 |
    |    region   |        RegionOne         |
    +-------------+--------------------------+
    Service: volume
    +-------------+-----------------------------------------------------------+
    |   Property  |                           Value                           |
    +-------------+-----------------------------------------------------------+
    |   adminURL  | http://127.0.0.1:8776/v1/c32e2a09541648f7b6ab67475a88103b |
    | internalURL | http://127.0.0.1:8776/v1/c32e2a09541648f7b6ab67475a88103b |
    |  publicURL  | http://127.0.0.1:8776/v1/c32e2a09541648f7b6ab67475a88103b |
    |    region   |                         RegionOne                         |
    +-------------+-----------------------------------------------------------+
    Service: ec2
    +-------------+--------------------------------------+
    |   Property  |                Value                 |
    +-------------+--------------------------------------+
    |   adminURL  | http://127.0.0.1:8773/services/Cloud |
    | internalURL | http://127.0.0.1:8773/services/Cloud |
    |  publicURL  | http://127.0.0.1:8773/services/Cloud |
    |    region   |              RegionOne               |
    +-------------+--------------------------------------+
    Service: identity
    +-------------+-----------------------------+
    |   Property  |            Value            |
    +-------------+-----------------------------+
    |   adminURL  | http://127.0.0.1:35357/v2.0 |
    | internalURL |  http://127.0.0.1:5000/v2.0 |
    |  publicURL  |  http://127.0.0.1:5000/v2.0 |
    |    region   |          RegionOne          |
    +-------------+-----------------------------+

List the images and favors of machines available for creating instances:

.. code-block:: bash

    root@ubuntu1204:~# nova image-list
    +--------------------------------------+--------+--------+--------+
    | ID                                   | Name   | Status | Server |
    +--------------------------------------+--------+--------+--------+
    | 8dd388c2-0927-4c93-bafb-a9e132fe4526 | cirros | ACTIVE |        |
    +--------------------------------------+--------+--------+--------+
    root@ubuntu1204:~# nova flavor-list
    +----+-----------+-----------+------+-----------+------+-------+-------------+-----------+-------------+
    | ID | Name      | Memory_MB | Disk | Ephemeral | Swap | VCPUs | RXTX_Factor | Is_Public | extra_specs |
    +----+-----------+-----------+------+-----------+------+-------+-------------+-----------+-------------+
    | 1  | m1.tiny   | 512       | 0    | 0         |      | 1     | 1.0         | True      | {}          |
    | 2  | m1.small  | 2048      | 20   | 0         |      | 1     | 1.0         | True      | {}          |
    | 3  | m1.medium | 4096      | 40   | 0         |      | 2     | 1.0         | True      | {}          |
    | 4  | m1.large  | 8192      | 80   | 0         |      | 4     | 1.0         | True      | {}          |
    | 5  | m1.xlarge | 16384     | 160  | 0         |      | 8     | 1.0         | True      | {}          |
    +----+-----------+-----------+------+-----------+------+-------+-------------+-----------+-------------+

The ``cirros`` |linux| base image is installed during the installation because the `node['openstack']['image']['image_upload']` attribute is set to `true` in the `vagrant` environment. Now create an instance named ``test1`` with the size of ``m1.tiny`` and image type of ``cirros`` (this will may take a few minutes).

.. code-block:: bash

    root@ubuntu1204:~# nova boot test1 --image cirros --flavor 1 --poll
    +-------------------------------------+--------------------------------------+
    | Property                            | Value                                |
    +-------------------------------------+--------------------------------------+
    | OS-EXT-STS:task_state               | scheduling                           |
    | image                               | cirros                               |
    | OS-EXT-STS:vm_state                 | building                             |
    | OS-EXT-SRV-ATTR:instance_name       | instance-00000001                    |
    | flavor                              | m1.tiny                              |
    | id                                  | fd52d006-086f-4064-84e2-316684b03578 |
    | security_groups                     | [{u'name': u'default'}]              |
    | user_id                             | e2b2974738174924bc955c7441721894     |
    | OS-DCF:diskConfig                   | MANUAL                               |
    | accessIPv4                          |                                      |
    | accessIPv6                          |                                      |
    | progress                            | 0                                    |
    | OS-EXT-STS:power_state              | 0                                    |
    | OS-EXT-AZ:availability_zone         | nova                                 |
    | config_drive                        |                                      |
    | status                              | BUILD                                |
    | updated                             | 2013-11-25T04:39:27Z                 |
    | hostId                              |                                      |
    | OS-EXT-SRV-ATTR:host                | None                                 |
    | key_name                            | None                                 |
    | OS-EXT-SRV-ATTR:hypervisor_hostname | None                                 |
    | name                                | test1                                |
    | adminPass                           | Uqa6u73rxngJ                         |
    | tenant_id                           | c32e2a09541648f7b6ab67475a88103b     |
    | created                             | 2013-11-25T04:39:27Z                 |
    | metadata                            | {}                                   |
    +-------------------------------------+--------------------------------------+

    Instance building... 100% complete
    Finished

The instance is now listed as ``ACTIVE``.

.. code-block:: bash

    root@ubuntu1204:~# nova list
    +--------------------------------------+-------+--------+----------------------+
    | ID                                   | Name  | Status | Networks             |
    +--------------------------------------+-------+--------+----------------------+
    | fd52d006-086f-4064-84e2-316684b03578 | test1 | ACTIVE | public=192.168.100.2 |
    +--------------------------------------+-------+--------+----------------------+

SSH into the instance with the user 'cirros' and the password 'cubswin:)':

.. code-block:: bash

    root@ubuntu1204:~# ssh cirros@192.168.100.2
    The authenticity of host '192.168.100.2 (192.168.100.2)' can't be established.
    RSA key fingerprint is 72:6d:33:55:d9:2b:2b:dc:e8:c3:5a:e9:43:f5:0d:1a.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added '192.168.100.2' (RSA) to the list of known hosts.
    cirros@192.168.100.2's password:
    $ uname -a
    Linux cirros 3.0.0-12-virtual #20-Ubuntu SMP Fri Oct 7 18:19:02 UTC 2011 x86_64 GNU/Linux
    $ exit
    Connection to 192.168.100.2 closed.

.. Depending on the IP address of your Vagrant instance, you may connect to the OpenStack Dashboard at http://...:8443

When you are finished with your testing, exit and destroy the |vagrant| virtual machine:

.. code-block:: bash

    root@ubuntu1204:~# exit
    logout
    vagrant@ubuntu1204:~$ exit
    logout
    Connection to 127.0.0.1 closed.
    $ vagrant destroy ubuntu1204 -f
    [ubuntu1204] Forcing shutdown of VM...
    [ubuntu1204] Destroying VM and associated drives...
    [Chef Zero] Stopping Chef Zero
    [ubuntu1204] Running cleanup tasks for 'chef_client' provisioner...
