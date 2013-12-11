=====================================================
About Handlers
=====================================================

.. warning:: This topic is a draft topic, intended to replace/update docs.opscode.com/essentials_handlers.html.

.. include:: ../../includes_handler/xincludes_handler.rst

Handler Types
=====================================================
.. include:: ../../includes_handler/xincludes_handler_types.rst

``run_status`` Object
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_object_run_status.rst

Run a Handler
=====================================================
.. include:: ../../includes_handler/xincludes_handler_run.rst

in a recipe
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_run_from_recipe.rst

``chef_handler`` Cookbook
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_lwrp_chef_handler.rst

``JsonFile`` Handler
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_lwrp_chef_handler.rst

from client.rb
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_run_from_client_rb.rst

Start Handlers
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_example_reporting_install.rst

|cookbook chef_client|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_example_reporting_install_cookbook.rst

|client rb|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_example_reporting_install_config.rst


Custom Handlers
=====================================================
.. include:: ../../includes_handler/xincludes_handler_custom.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_syntax.rst

``report`` Interface
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_interface_report.rst

Optional Interfaces
-----------------------------------------------------
The following interfaces may be used in a handler in the same way as the ``report`` interface to override the default handler behavior in the |chef client|. That said, the following interfaces are not typically used in a handler and, for the most part, are completely unnecessary for a handler to work properly and/or as desired.

``data``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_interface_data.rst

``run_report_safely``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_interface_run_report_safely.rst

``run_report_unsafe``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_interface_run_report_unsafe.rst

Start Handlers
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_type_start.rst


Example Handlers
=====================================================
The following sections show examples of handlers.

Cookbook Versions
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_example_cookbook_versions.rst

cookbook_versions.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_example_cookbook_versions_handler.rst

default.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_example_cookbook_versions_recipe.rst

|reporting|
-----------------------------------------------------
.. include:: ../../includes_handler/xincludes_handler_custom_example_reporting.rst

.. note:: The start handler used by the |reporting| add-on for |chef server oec| is always installed using the |cookbook chef client| cookbook.

start_handler.rb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/xincludes_handler_custom_example_reporting_handler.rst



Community Handlers
=====================================================
.. include:: ../../includes_handler/xincludes_handler_community_handlers.rst






