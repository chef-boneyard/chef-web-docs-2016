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

.. code-block:: bash

   $ knife ssl check

**Verify the SSL configuration for the chef-client**

.. code-block:: bash

   $ knife ssl check -c /etc/chef/client.rb

**Verify an external server's SSL certificate**

.. code-block:: bash

   $ knife ssl check URL_or_URI

for example:

.. code-block:: bash

   $ knife ssl check https://www.getchef.com
