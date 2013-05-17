=====================================================
knife hp
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_hp.rst

flavor list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_options.rst

Examples
-----------------------------------------------------
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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_options.rst

Examples
-----------------------------------------------------
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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_options.rst

Examples
-----------------------------------------------------
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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_options.rst

Examples
-----------------------------------------------------
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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_options.rst