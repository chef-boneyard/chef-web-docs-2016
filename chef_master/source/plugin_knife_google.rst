=====================================================
knife google
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_google.rst

Bootstrap and SSH
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_bootstrap_and_ssh_keys.rst

disk create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_options.rst

**Examples**

None.

disk delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_options.rst

**Examples**

None.

disk list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_options.rst

**Examples**

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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_options.rst

**Examples**

For example, to create a server:

.. code-block:: bash

   $ knife google server create www1 -m n1-standard-1 
       -I centos-6-v20130325 -Z us-central2-a -i ~/.ssh/id_rsa -x jdoe

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_options.rst

**Examples**

For example, to delete a server using the ``--purge`` option. which will delete every |chef client| and |chef| node:

.. code-block:: bash

   $ knife google server delete www1 --purge -Z us-central2-a

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_options.rst

**Examples**

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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup.rst

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_plugin.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_options.rst

**Examples**

None.

zone list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_options.rst

**Examples**

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
