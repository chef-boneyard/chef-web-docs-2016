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

.. code-block:: bash

   $ knife ssl fetch

**Fetch the SSL certificates used by the chef-client from the Chef server**

.. code-block:: bash

   $ knife ssl fetch -c /etc/chef/client.rb

**Fetch SSL certificates from a URL or URI**

.. code-block:: bash

   $ knife ssl fetch URL_or_URI

for example:

.. code-block:: bash

   $ knife ssl fetch https://www.getchef.com
