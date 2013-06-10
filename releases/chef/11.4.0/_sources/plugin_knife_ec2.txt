=====================================================
knife ec2
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_ec2.rst

instance data
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_options.rst

Examples
-----------------------------------------------------
For example, to launch a new Amazon EC2 instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[webserver]" -I ami-2d4aa444 --flavor m1.small -G www,default -x ubuntu -N server01

To launch a new Amazon EC2 instance with multiple roles, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[base],role[webserver]" -I ami-2d4aa444 -G www,default -x ubuntu --node-name server01

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_options.rst

Examples
-----------------------------------------------------
For example, to delete a node called "preprod" in an instance named "operations", enter:

.. code-block:: bash

   $ knife ec2 server delete operations preprod

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_options.rst