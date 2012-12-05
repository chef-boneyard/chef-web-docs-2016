.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |omnibus installer| is used to set up a |chef server|. The |omnibus installer| separates the installation of the |chef server| from the configuration. The |omnibus installer| uses a single command to install the |chef server| and all of its dependencies, including |erlang|, |ruby|, |rabbitmq|, |nginx|, and |postgresql|. The |omnibus installer| puts everything into a unique directory (/etc/chef-server/) so that the |chef server| will not interfere with other applications that may be running on the target machine. Once installed, the |chef server| a single configuration step.

.. note:: |opscode| has created a small project called ``chef-server-demo`` that will enable the creation of a self-contained |chef server| within a |virtualbox| virtual machine on your system. This is the best way to install and preview the new version of the |chef server|. Download the ``chef-server-demo`` from here: https://github.com/opscode/chef-server-demo.

System Requirements
=============================================
The |chef server| provides an |omnibus installer| for the following operating systems and versions:

* |centos| 5 (64-bit only), 6 (32-bit and 64-bit versions)
* |ubuntu| 10.04, 11.04, 12.04 (both 32-bit and 64-bit versions)

Chef 11 Server Cookbook
===========================================

The easiest way to retrieve the appropriate alpha build for your system is to use the recently updated chef-server cookbook.

The default recipe in this cookbook:

#. Retrieves and installs the appropriate platform-specific chef-server Omnibus package.
#. Creates the initial /etc/chef-server/chef-server.rb file.
#. Performs initial system configuration via chef-server-ctl reconfigure.

Omnibus package selection is done based on the following logic:

If a value has been provided, the chef-server Omnibus package is fetched from ``node['chef-server']['package_file']``.

If ``node['chef-server']['package_file']`` is unset (ie nil or empty string), the candidate package is retrieved from the Omnitruck REST API based on ``node['chef-server']['version']`` AND the node platform, ``platform_version`` and architecture. By default the latest package is installed.

Vagrant-based Self Contained Demo Environment
=============================================

The easiest way to take Chef 11 Server for a spin is using the Berksfile and Vagrantfile the chef-server cookbook. The only requirements for standing up a virtualized Chef Server are Ruby (>= 1.9.1), Rubygems (>= 1.3.6), and VirtualBox:

.. code-block:: bash

   gem install bundler --no-ri --no-rdoc
   git clone git://github.com/opscode-cookbooks/chef-server.git   
   cd chef-server
   bundle install   
   bundle exec vagrant up

If you need help installing any of the prerequisites take a look at Jamie Winsor's excellent blog post on the subject.

You can easily SSH into the running VM using the vagrant ssh command. The VM can easily be stopped and deleted with the vagrant destroy command. Please see the official Vagrant documentation for a more in depth explanation of available commands.

The running Chef-Server components are accessible from the host machine using the following URLs:

* Web UI: https://33.33.33.10/
* Version Manifest: https://33.33.33.10/version
* Chef Server API (routing requires X-OPS-USERID HTTP header being properly set): https://33.33.33.10/


Reporting Issues
===========================================

If you find a bug in a Chef 11 Server Alpha, please open a ticket in the tickets.opscode.com with the following fields set so that it can be found and addressed before release:

* Project: Chef
* Component: Chef Server
* Affects Versions: 11.0.0

Known Issues
===========================================

#. ``knife client reregister`` does not work.  The current workaround for this is to delete and then re-create the client.


