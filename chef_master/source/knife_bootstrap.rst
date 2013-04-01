=====================================================
knife bootstrap
=====================================================

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

**knife.rb File Settings**

In addition to the default settings in a |knife rb| file, there are other subcommand-specific settings that can be added. When a subcommand is run, |knife| will use:

#. A value passed via the command-line
#. A value contained in the |knife rb| file
#. The default value

A value passed via the command line will override a value in the |knife rb| file; a value in a |knife rb| file will override a default value. See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_bootstrap_settings.rst

**Examples**

To pass an SSH password as part of the command:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -P PASSWORD --sudo

To use a file that contains a private key:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -i ~/.ssh/id_rsa --sudo

The following examples show how to customize the default bootstraps that are included with |chef|. 

**Ubuntu 12.04**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_ubuntu.rst

**Debian and Apt**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_debian.rst

