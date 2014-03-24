=====================================================
Release Notes: |chef client| 11.12.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef 11-12| and/or are changes from previous versions. The short version:

* **Ohai 7.0** |ohai 7| is part of the |chef client| 11-12 install
* **knife ssl check** Use the |subcommand knife ssl_check| subcommand to xxxxx.
* **knife ssl fetch** Use the |subcommand knife ssl_fetch| subcommand to xxxxx.
* **New options for knife client subcommands** New options allow the creation and deletion of the |chef validator|.
* **New options for chef-client** A new option allows a run-list to be specified, and then set permanently.
* **Weekdays as symbols** The |resource cron| resource allows weekdays to be entered as a symbol, e.g. ``:monday`` or ``:friday``.

|ohai 7|
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_platforms.rst

.. note:: See the `Ohai 7 documentation <http://docs.opscode.com/release/ohai-7/>`_ and `release notes <http://docs.opscode.com/release/ohai-7/release_notes.html>`_ for all of the details.

``collect_data`` Method
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai.rst

.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data.rst

.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data_mash.rst

.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data_example.rst

``knife ssl check``
-----------------------------------------------------
.. include:: ../includes_knife_ssl_check.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../includes_knife_ssl_check_syntax.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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

``knife ssl fetch``
-----------------------------------------------------
.. include:: ../includes_knife_ssl_fetch.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../includes_knife_ssl_fetch_syntax.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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

|knife| Options
-----------------------------------------------------
New options have been added to the following |knife| subcommands:

knife client bulk delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++

``-D``, ``--delete-validators``
   |delete chef_validator|

knife client create
+++++++++++++++++++++++++++++++++++++++++++++++++++++

``--validator``
   Use to create the client as the |chef validator|.

knife client delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++

``-D``, ``--delete-validators``
   |delete chef_validator|


|chef client| Options
-----------------------------------------------------
New options have been added to the |chef client|:

``-r RUN_LIST_ITEM``, ``--runlist RUN_LIST_ITEM``
   |runlist_items|


xxxxx
-----------------------------------------------------
xxxxx


What's Fixed
=====================================================
The following bugs were fixed:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx

What's Improved
=====================================================
The following improvements were made:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx

New Features
=====================================================
The following features were added:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx