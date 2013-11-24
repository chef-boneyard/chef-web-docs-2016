.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

[Vagrant](http://vagrantup.com) is a virtualization framework for managing development environments, it may be used for testing the :doc:`All-in-One </openstack_architecture_allinone>` configuration in the |chef repo openstack|. Vagrant is a third-party tool that may be used with |chef|, but is not required for using the |chef repo openstack|.

Installation
------------

Vagrant supports a number of virtualization and cloud back-ends. For our purposes we are using Virtualbox (currently 4.2.18). You may download it from Virtualbox.com.

Install Vagrant 1.2.1 or later from packages. You may download it from https://downloads.vagrantup.com.

Our test configuration requires a number of Vagrant plugins, install the following plugins in exactly this order:

.. code-block:: bash

   $ vagrant plugin install vagrant-omnibus
   $ vagrant plugin install vagrant-chef-zero
   $ vagrant plugin install vagrant-berkshelf

Vagrantfile
-----------

Vagrant uses a **Vagrantfile** for managing its configuration. Within the |chef repo openstack| there is a Vagrantfile that configures the Virtualbox VM for our purposes.

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

     # Port forwarding rules, for access to openstack services
     config.vm.network "forwarded_port", guest: 443, host: 8443     # dashboard-ssl
     config.vm.network "forwarded_port", guest: 4000, host: 4000    # chef-zero
     config.vm.network "forwarded_port", guest: 8773, host: 8773    # compute-ec2-api
     config.vm.network "forwarded_port", guest: 8774, host: 8774    # compute-api

     # OpenStack-related settings
     config.vm.network "private_network", ip: "33.33.33.60"
     config.vm.network "private_network", ip: "192.168.100.60"
     config.vm.provider "virtualbox" do |vb|
       vb.customize ["modifyvm", :id, "--cpus", 2]
       vb.customize ["modifyvm", :id, "--memory", 2048]
       vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
       vb.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"]
     end

     chef_environment = "vagrant"
     chef_run_list = [ "recipe[packages]", "role[allinone-compute]" ]

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

Roles
-----

Vagrant Usage
-------------

$ vagrant up ubuntu1204HK
$ vagrant ssh ubuntu1204HK
6\. Check that the plugins are successfully installed:

````shell
$ vagrant plugin list
  vagrant-berkshelf (1.3.4)
  vagrant-chef-zero (0.5.0)
  vagrant-omnibus (1.1.2)
````

7\. Install the Virtualbox image we will be using for the demo from one of the mirrors:

````shell
$ vagrant box add ubuntu1204HK http://RACKSPACE/HK_chef_openstack_ubuntu-12.04.box
$ vagrant box add ubuntu1204HK http://192.168.1.10/HK_chef_openstack_ubuntu-12.04.box
````

8\. Start up the Vagrant virtual machine with the following command:

````shell
$ vagrant up ubuntu1204HK
````

9\. SSH into the Vagrant virtual machine once it has completed the installation:

````shell
$ vagrant ssh ubuntu1204HK
````

10\. Become the 'root' user:

````shell
$ sudo su -
````

11\. Source the `openrc` file to configure the `root` user's environment for OpenStack:

````shell
# source openrc
````

12\. List the Nova Compute services that are running:

````shell
# nova service-list
````

13\. List the Nova Compute hypervisors that are running:

````shell
# nova hypervisor-list
````

14\. List the Quantum Network services that are running:

````shell
# quantum agent-list
````

15\. Install the Cirros Linux base image from one of the mirrors:

````shell
# glance image-create --name cirros --is-public true --container-format bare --disk-format qcow2 --location http://RACKSPACE/cirros-0.3.0-x86_64-disk.img
# glance image-create --name cirros --is-public true --container-format bare --disk-format qcow2 --location http://192.168.1.10/cirros-0.3.0-x86_64-disk.img
# glance image-create --name cirros --is-public true --container-format bare --disk-format qcow2 --location https://launchpad.net/cirros/trunk/0.3.0/+download/cirros-0.3.0-x86_64-disk.img
````

16\. List the images available for creating instances:

````shell
# nova image-list
````

17\. Boot a very small test instance:

````shell
# nova boot test1 --image cirros --flavor 1 --poll
````

18\. List the instances that are currently running:

````shell
# nova list
````

19\. Inspect the running test instance:

````shell
# nova show test1
````

20\. SSH into the image, the user is 'cirros' and the password is 'cubswin:)':

````shell
root@ubuntu1204:~# ssh cirros@192.168.100.2
The authenticity of host '192.168.100.2 (192.168.100.2)' can't be established.
RSA key fingerprint is 90:c5:8c:9c:f7:73:b4:54:cf:15:0d:28:54:7f:e7:19.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.100.2' (RSA) to the list of known hosts.
cirros@192.168.100.2's password:
$
````

21\. Connect to the OpenStack Dashboard:

````
http://...:8443
````

22\. Logout of the instance and exit the Vagrant virtual machine. Destroy the Vagrant VM:

````shell
$ vagrant destroy ubuntu1204 -f
````
