=====================================================
knife upload
=====================================================

.. include:: ../../includes_knife/includes_knife_upload.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_upload_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_upload_options.rst

knife.rb Settings
-----------------------------------------------------
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_upload_settings.rst

Examples
=====================================================
.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks.rst

.. include:: ../../step_knife/step_knife_upload_directory_environments.rst

.. include:: ../../step_knife/step_knife_upload_directory_environment.rst

.. include:: ../../step_knife/step_knife_upload_directory_roles.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks_and_role.rst

Use the output of ``knife deps`` to pass a command to ``knife upload``. For example:

.. code-block:: bash

   $ knife upload `knife deps nodes/*.json


