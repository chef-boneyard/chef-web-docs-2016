=====================================================
Knife Plugins Reference
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife.rst

Working with Knife
=====================================================
.. include:: ../../includes_knife/includes_knife_using.rst

JSON Data Format
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_json.rst

Using Quotes
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_quotes.rst

Wildcard Search
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_verbs_wildcard.rst

Plug-ins
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_plugins.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_syntax.rst

Common Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_common_options.rst

Authenticated API Requests
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_using_authenticated_requests.rst

Plugins
=====================================================

The following plugins for |knife| are provided by |opscode|:

* azure
* bluebox
* bluelock
* ec2
* eucalyptus
* google
* hp
* linode
* openstack
* rackspace
* terremark
* windows


knife azure
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_azure.rst

Generate the Management Certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_certificate.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while also creating new hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

To provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while reusing existing hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" 
     --hosted-service-name webservers --storage-account webservers-storage --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12

server describe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_options.rst


knife bluebox
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_bluebox.rst

images list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_images_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_images_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete an instance at block "12345" with a hostname of "dev", enter:

.. code-block:: bash

   $ knife bluebox server delete block12345-dev.blueboxgrid.com

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|


knife bluelock
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_bluelock.rst

images list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list_options.rst


knife ec2
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_ec2.rst

instance data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to launch a new Amazon EC2 instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[webserver]" -I ami-2d4aa444 --flavor m1.small -G www,default -x ubuntu -N server01

To launch a new Amazon EC2 instance with multiple roles, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[base],role[webserver]" -I ami-2d4aa444 -G www,default -x ubuntu --node-name server01

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete a node called "preprod" in an instance named "operations", enter:

.. code-block:: bash

   $ knife ec2 server delete operations preprod

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_options.rst


knife eucalyptus
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_eucalyptus.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife eucalyptus flavor list

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife eucalyptus image list

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete an instance named "devops2012", enter:

.. code-block:: bash

   $ knife eucalyptus server delete devops2012

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list_options.rst


knife google
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_google.rst

Bootstrap and SSH
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_bootstrap_and_ssh_keys.rst

disk create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

disk delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

disk list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to view a list of disks, enter:

.. code-block:: bash

   $ knife google disk list

to return something similar to the following:

.. code-block:: bash

   Name                Zone           Source Snapshot  Size (In GB)  Status
   jay-scratch         us-central2-a                   10            ready 
   pd-fuse             us-central2-a                   10            ready 
   pd28g               us-central2-a                   28            ready 

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to create a server:

.. code-block:: bash

   $ knife google server create www1 -m n1-standard-1 
       -I centos-6-v20130325 -Z us-central2-a -i ~/.ssh/id_rsa -x jdoe

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete a server using the ``--purge`` option. which will delete every |chef client| and |chef| node:

.. code-block:: bash

   $ knife google server delete www1 --purge -Z us-central2-a

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to view a list of instances associated with a project named "dev-01", enter:

.. code-block:: bash

   $ knife google server list -p dev-01

To view a list of all servers in the ``us-central2-a`` zone, including those that may not be managed by |chef|, enter:

.. code-block:: bash

   $ knife google server list -Z us-central2-a

to return something similar to the following:

.. code-block:: bash

   Name              Type           Image                 Public IP        Private IP      Disks               Zone           Status 
   chef-svr          n1-standard-1  gcel-12-04-v20130325  103.59.80.113    10.240.45.78                        us-central2-a  running
   chef-workstation  n1-standard-1  gcel-12-04-v20130325  103.59.85.188    10.240.9.140                        us-central2-a  running
   fuse-dev          n1-standard-1  gcel-12-04-v20130225  103.59.80.147    10.240.166.18   pd-fuse             us-central2-a  running
   magfs-c1          n1-standard-2  gcel-12-04-v20130225  103.59.87.217    10.240.61.92                        us-central2-a  running
   magfs-c2          n1-standard-2  gcel-12-04-v20130225  103.59.80.161    10.240.175.240                      us-central2-a  running
   magfs-c3          n1-standard-2  gcel-12-04-v20130325  178.255.120.69   10.240.34.197   jay-scratch         us-central2-a  running
   magfs-svr         n1-standard-4  gcel-12-04-v20130225  103.59.80.178    10.240.81.25    pd28g               us-central2-a  running

setup
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup.rst

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_plugin.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

zone list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to see a list of all zones, including status and maintenance windows, enter:

.. code-block:: bash

   $ knife google zone list

to return something similar to the following:

.. code-block:: bash

    Name            Status  Servers  Disks  Maintainance Window                                   
    europe-west1-a  up      0        0      2013-08-03 19:00:00 +0000 to 2013-08-18 19:00:00 +0000
    europe-west1-b  up      0        0      2013-05-11 19:00:00 +0000 to 2013-05-26 19:00:00 +0000
    us-central1-a   up      0        1      2013-08-17 19:00:00 +0000 to 2013-09-01 19:00:00 +0000
    us-central1-b   up      0        0      2013-06-08 19:00:00 +0000 to 2013-06-23 19:00:00 +0000
    us-central2-a   up      10       6      2013-05-25 19:00:00 +0000 to 2013-06-09 19:00:00 +0000



knife hp
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_hp.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife hp flavor list

to return:

.. code-block:: bash

   ID        Name              Cores     RAM          Disk
   100       standard.xsmall   1         1024 MB      30 GB
   101       standard.small    2         2048 MB      60 GB
   102       standard.medium   2         4096 MB      120 GB
   103       standard.large    4         8192 MB      240 GB
   104       standard.xlarge   4         16384 MB     480 GB
   105       standard.2xlarge  8         32768 MB     960 GB

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife hp flavor list

to return:

.. code-block:: bash

   ID                Name
   1234              CentOS 5.6 Server 64-bit
   1358              CentOS 6.2 Server 64-bit
   1361              Debian Squeeze 6.0.3 Server 64-bit
   1236              Ubuntu Lucid 10.04 LTS Server 64-bit
   1238              Ubuntu Maverick 10.10 Server 64-bit
   1240              Ubuntu Natty 11.04 Server 64-bit
   1242              Ubuntu Oneiric 11.10 Server 64-bit


server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to provision a server and then perform a bootstrap operation (using |ssh|), enter:

.. code-block:: bash

   $ knife hp server create -f 101 -I 1236 -S hptesting -x ubuntu -i ~/.ssh/hptesting.pem -d omnibus -r 'role[base]' 2

to return something like:

.. code-block:: bash

   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   SSH Key Pair: hptesting
   
   Waiting for server............................................
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   
   Waiting for sshd..done
   Bootstrapping Chef on 15.185.114.127
   15.185.114.127 --2012-03-09 18:18:17--  http://opscode.com/chef/install.sh
   ............
   
   ............
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Chef Run complete in 25.468149268 seconds
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Running report handlers
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Report handlers complete
   
   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   SSH Key Pair: hptesting
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   Environment: _default
   Run List: role[base]
   

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete an instance named "65646", enter:

.. code-block:: bash

   $ knife hp server delete 65646

to return:

.. code-block:: bash

   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   
   WARNING: Deleted server 65646

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_options.rst


knife linode
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_linode.rst

datacenter list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list_options.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list_options.rst

kernel list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

server reboot
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_reboot.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_reboot_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

stackscript list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_stackscript_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_stackscript_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|


knife openstack
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_openstack.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife openstack flavor list

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to view a list of images, enter:

.. code-block:: bash

   $ knife openstack image list

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list_options.rst


knife rackspace
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_rackspace.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
To launch a new Rackspace instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[webserver]' --server-name server01 --node-name server01 --image 49 --flavor 2

To launch a new Rackspace instance with multiple roles, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[base],role[webserver]' --server-name server01 -N server01 --image 49 --flavor 2


server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete a |rackspace| instance with an Instance ID of "12345678", enter:

.. code-block:: bash

   $ knife rackspace server delete 12345678

to return:

.. code-block:: bash

   Instance ID: 12345678
   Host ID: testexample
   Name: slice12345678
   Flavor: 1GB server
   Image: Ubuntu 10.04 LTS (lucid)
   Public DNS Name: 1-1-1-1.static.cloud-ips.com
   Public IP Address: 1.1.1.1
   Private IP Address: 192.168.1.1

Confirm the deletion:

.. code-block:: bash

   Do you really want to delete this server? (Y/N) Y
   WARNING: Deleted server 12345678 named slice12345678

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to find all Rackspace instances, enter:

.. code-block:: bash

   $ knife cloud rackspace list

to return:

.. code-block:: bash

   Instance ID    Public IP    Private IP    Flavor    Image     State     Name        
   12345678       1.1.1.1      192.168.1.1   3         49        active    slice12345678



knife terremark
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_terremark.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to create a new instance, enter:

.. code-block:: bash

   $ knife terremark server list server_name -A useraccount -K password -S service_name

To provision a new dual-core 1.0 GB |ubuntu| 10.04 web server with three attached disks with sizes of "25G", "50G", and "50G", enter something like:

.. code-block:: bash

   $ knife terremark server create --vcpus 2 -m 1024 -I 40 -A 'username' -K "password" 
     -r 'role[webserver]' -i ~/.ssh/ssh-identity-file.pem -N web-server-nginx --tcp 80,8080 
     --udp 5050 --disks 25,50,50

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to delete an instance with an identifier of "abcdefg", enter:

.. code-block:: bash

   $ knife terremark server delete abcdefg

server list
v
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name


knife windows
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_windows.rst

Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_requirements.rst

bootstrap windows ssh
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example:

.. code-block:: bash

   $ knife bootstrap windows ssh ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -i ~/.ssh/id_rsa

bootstrap windows winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example:

.. code-block:: bash

   $ knife bootstrap windows winrm ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -P 'super_secret_password'

winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example, to find the uptime of all web servers, enter:

.. code-block:: bash

   $ knife winrm "role:web" "net stats srv" -x Administrator -P password

Or, to force a |chef| run:

.. code-block:: bash

   knife winrm 'ec2-50-xx-xx-124.amazonaws.com' 'chef-client -c c:/chef/client.rb' -m -x admin -P 'password'
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Starting Chef Run (Version 0.9.12)
   ec2-50-xx-xx-124.amazonaws.com [date] WARN: Node ip-0A502FFB has an empty run list.
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Chef Run complete in 4.383966 seconds
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: cleaning the checksum cache
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Running report handlers
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Report handlers complete

Where in the examples above, ``[date]`` represents the date and time the long entry was created. For example: ``[Fri, 04 Mar 2011 22:00:53 +0000]``.
