=====================================================
knife bootstrap
=====================================================

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

**Options**

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

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

