=====================================================
knife google
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_google.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_options.rst

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_options.rst

**Examples**

For example, to delete a server named "devops01" from a project named "engineering", enter:

.. code-block:: bash

   $ knife google server delete devops1 engineering

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