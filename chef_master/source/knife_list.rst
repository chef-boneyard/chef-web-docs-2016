=====================================================
knife list
=====================================================

.. include:: ../../includes_knife/includes_knife_list.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_list_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_list_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_list_settings.rst

Examples
=====================================================
For example, to view a list of roles on the |chef server|:

.. code-block:: bash

   $ knife list roles/

To view a list of roles and environments on the |chef server|:

.. code-block:: bash

   $ knife list roles/ environments/

To view a list of absolutely everything on the |chef server|:

.. code-block:: bash

   $ knife list -R /


