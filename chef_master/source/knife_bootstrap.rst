=====================================================
knife bootstrap
=====================================================

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

knife.rb Settings
-----------------------------------------------------
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_bootstrap_settings.rst

Custom Bootstrap Templates
=====================================================
A custom bootstrap template file (``template_filename.erb``) must be located in a ``bootstrap/`` directory. Use the ``--distro`` option with the ``knife bootstrap`` subcommand to specify the bootstrap template file. For example, a bootstrap template file named "british_sea_power.erb":

.. code-block:: bash

   $ knife bootstrap 123.456.7.8 -x username -P password --sudo --distro "british_sea_power.erb"

Examples
=====================================================
.. include:: ../../step_knife/step_knife_bootstrap_use_ssh_password.rst

.. include:: ../../step_knife/step_knife_bootstrap_use_file_with_private_key.rst

The following examples show how to customize the default bootstrap template files that are included with |chef|. 

**Ubuntu 12.04**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_ubuntu.rst

**Debian and Apt**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_debian.rst

