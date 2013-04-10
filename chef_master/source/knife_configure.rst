=====================================================
knife configure
=====================================================

.. include:: ../../includes_knife/includes_knife_configure.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_configure_syntax.rst

**Options**

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_configure_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_configure_settings.rst

**Examples**

For example, to create a |knife rb| file, enter:

.. code-block:: bash

   $ knife configure
   
To configure a |client rb|, enter:

.. code-block:: bash

   $ knife configure client '/directory'


