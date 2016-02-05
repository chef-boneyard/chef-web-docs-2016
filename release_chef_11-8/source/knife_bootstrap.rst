.. THIS PAGE DOCUMENTS chef-client version 11.8

=====================================================
knife bootstrap
=====================================================

.. include:: ../../includes_chef_client/includes_chef_client_bootstrap_node.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

.. note:: .. include:: ../../includes_notes/includes_notes_knife_bootstrap_on_windows.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-10_bootstrap_options.rst

.. note:: See :doc:`knife.rb </config_rb_knife_optional_settings>` for more information about how to add certain |knife| options as settings in the |knife rb| file.

Custom Templates
=====================================================
.. include:: ../../includes_knife/includes_knife_11-16_bootstrap_template.rst

Template Locations
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_11-16_bootstrap_template_location.rst

Ubuntu 12.04
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_11-16_bootstrap_example_ubuntu.rst

Debian and Apt
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_11-16_bootstrap_example_debian.rst

Microsoft Windows
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_11-16_bootstrap_example_windows.rst

Examples
=====================================================
The following examples show how to use this |knife| subcommand:

**Bootstrap a node**

.. include:: ../../step_knife/step_knife_bootstrap_node.rst

**Use an SSH password**

.. include:: ../../step_knife/step_knife_bootstrap_use_ssh_password.rst

**Use a file that contains a private key**

.. include:: ../../step_knife/step_knife_bootstrap_use_file_with_private_key.rst
