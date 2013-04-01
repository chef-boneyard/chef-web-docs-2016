=====================================================
knife terremark
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark.rst

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_terremark.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_options.rst

**Examples**

For example, to create a new instance, enter:

.. code-block:: bash

   $ knife terremark server list server_name -A useraccount -K password -S service_name

To provision a new dual-core 1.0 GB |ubuntu| 10.04 web server with three attached disks with sizes of "25G", "50G", and "50G", enter something like:

.. code-block:: bash

   $ knife terremark server create --vcpus 2 -m 1024 -I 40 -A 'username' -K "password" 
     -r 'role[webserver]' -i ~/.ssh/ssh-identity-file.pem -N web-server-nginx --tcp 80,8080 
     --udp 5050 --disks 25,50,50

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example, to delete an instance with an identifier of "abcdefg", enter:

.. code-block:: bash

   $ knife terremark server delete abcdefg

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_options.rst

**Examples**

For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name