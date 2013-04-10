=====================================================
knife rackspace
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_rackspace.rst

flavor list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_options.rst

image list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_options.rst

**Examples**

To launch a new Rackspace instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[webserver]' --server-name server01 --node-name server01 --image 49 --flavor 2

To launch a new Rackspace instance with multiple roles, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[base],role[webserver]' --server-name server01 -N server01 --image 49 --flavor 2


server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_options.rst

**Examples**

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
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_options.rst

**Examples**

For example, to find all Rackspace instances, enter:

.. code-block:: bash

   $ knife cloud rackspace list

to return:

.. code-block:: bash

   Instance ID    Public IP    Private IP    Flavor    Image     State     Name        
   12345678       1.1.1.1      192.168.1.1   3         49        active    slice12345678

