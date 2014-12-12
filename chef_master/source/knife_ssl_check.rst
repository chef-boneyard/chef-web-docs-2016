=====================================================
knife ssl check
=====================================================

.. include:: ../../includes_knife/includes_knife_ssl_check.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_ssl_check_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

|no_options|

Examples
=====================================================
The following examples show how to use this |knife| subcommand:

**Verify the SSL configuration for the Chef server**

.. include:: ../../step_knife/step_knife_ssl_check_verify_server_config.rst

**Verify the SSL configuration for the chef-client**

.. include:: ../../step_knife/step_knife_ssl_check_verify_client_config.rst

**Verify an external server's SSL certificate**

.. include:: ../../step_knife/step_knife_ssl_check_verify_external_server.rst

**SSL certificate has invalid X509 properties**

.. include:: ../../step_knife/step_knife_ssl_check_bad_ssl_certificate.rst
