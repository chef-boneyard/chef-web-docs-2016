=====================================================
knife ec2
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2.rst

.. note:: This plugin requires the |subcommand knife windows| plugin to be present on the same machine.

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_install_rubygem.rst

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
**Launch an instance which has a single Chef role**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_create_instance_with_single_role.rst

**Launch an instance which has many Chef roles**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_create_instance_with_many_roles.rst

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
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_delete.rst

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_options.rst