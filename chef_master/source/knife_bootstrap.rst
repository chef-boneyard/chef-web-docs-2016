=====================================================
knife bootstrap
=====================================================

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

.. note:: To bootstrap the |chef client| on |windows| machines, the `knife-windows <http://docs.opscode.com/plugin_knife_windows.html>`_ plugins is required, which includes the necessary bootstrap scripts that are used to do the actual installation.

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

Custom Templates
=====================================================
.. include:: ../../includes_knife/includes_knife_bootstrap_template.rst

Template Locations
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bootstrap_template_location.rst

Ubuntu 12.04
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bootstrap_example_ubuntu.rst

Debian and Apt
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bootstrap_example_debian.rst

Microsoft Windows
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bootstrap_example_windows.rst

Examples
=====================================================
The following examples show how to use this |knife| subcommand:

**Bootstrap a node**

.. include:: ../../step_knife/step_knife_bootstrap_node.rst

**Use an SSH password**

.. include:: ../../step_knife/step_knife_bootstrap_use_ssh_password.rst

**Use a file that contains a private key**

.. include:: ../../step_knife/step_knife_bootstrap_use_file_with_private_key.rst

**Fetch and execute an installation script from a URL **

.. code-block:: bash

   $ knife bootstrap --bootstrap-install-sh http://mycustomserver.com/custom_install_chef_script.sh

**Specify options when using cURL**

.. code-block:: bash

   $ knife bootstrap --bootstrap-curl-options "--proxy http://myproxy.com:8080"

**Specify options when using GNU Wget**

.. code-block:: bash

   $ knife bootstrap --bootstrap-wget-options "-e use_proxy=yes -e http://myproxy.com:8080"

**Specify a custom installation command sequence**

.. code-block:: bash

   $ knife bootstrap --bootstrap-install-command "curl -l http://mycustomserver.com/custom_install_chef_script.sh | sudo bash -s --"






