=====================================================
knife recipe list
=====================================================

.. include:: ../../includes_knife/includes_knife_recipe_list.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_recipe_list_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

|no_options|

Examples
=====================================================
For example, enter:

.. code-block:: bash

   $ knife recipe list 'couchdb::*'

to return:

.. code-block:: bash

   couchdb::main_monitors
   couchdb::master
   couchdb::default
   couchdb::org_cleanu



