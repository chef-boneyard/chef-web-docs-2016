=====================================================
knife ssl_fetch
=====================================================

.. include:: ../../includes_knife/includes_knife_ssl_fetch.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_ssl_fetch_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

|no_options|

Examples
=====================================================
The following examples show how to use this |knife| subcommand:

**Fetch the SSL certificates used by Knife from the Chef server**

.. include:: ../../step_knife/step_knife_ssl_fetch_knife_certificates.rst

**Fetch the SSL certificates used by the chef-client from the Chef server**

.. include:: ../../step_knife/step_knife_ssl_fetch_client_certificates.rst

**Fetch SSL certificates from a URL or URI**

.. include:: ../../step_knife/step_knife_ssl_fetch_from_url_or_uri.rst
