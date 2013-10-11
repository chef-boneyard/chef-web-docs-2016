=====================================================
knife raw
=====================================================

.. include:: ../../includes_knife/includes_knife_raw.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_raw_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_raw_options.rst

knife.rb Settings
-----------------------------------------------------
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_raw_settings.rst

Examples
=====================================================
.. include:: ../../step_knife/step_knife_raw_view_client.rst

.. include:: ../../step_knife/step_knife_raw_view_node.rst

To delete a data bag, enter a command similar to:

.. code-block:: bash

   $ knife raw -m DELETE /data/foo

to return something similar to:

.. code-block:: bash

   {
     "name":"foo",
     "json_class":"Chef::DataBag",
     "chef_type":"data_bag"
   }




