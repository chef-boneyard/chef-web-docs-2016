=====================================================
Release Notes: |chef client| 11.12.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef 11-12| and/or are changes from previous versions. The short version:

* **Ohai 7.0** |ohai 7| is part of the |chef client| 11-12 install
* **New windows_package resource** Use the |resource package_windows| resource to manage packages on the |windows| platform.
* **New guard_interpreter attribute** Use the ``guard_interpreter`` attribute to specify a |resource script|-based resource---|resource script_bash|, |resource script_csh|, |resource script_perl|, |resource powershell_script|, |resource script_python|, and |resource script_ruby|---that will be used to evaluate a string command.
* **New convert_boolean_true attribute** Use the ``convert_boolean_true`` attribute to return ``0`` (true) or ``1`` (false) based on certain conditions in a |resource powershell_script| resource block.
* **knife ssl check** Use the |subcommand knife ssl_check| subcommand to verify SSL configuration for the |chef server|.
* **knife ssl fetch** Use the |subcommand knife ssl_fetch| subcommand to copy SSL certificates from an HTTPS server to the ``trusted_certs_dir`` directory.
* **New options for knife client subcommands** New options allow the creation and deletion of the |chef validator|.
* **New options for chef-client** A new option allows a run-list to be specified, and then set permanently.
* **Weekdays as symbols** The |resource cron| resource allows weekdays to be entered as a symbol, e.g. ``:monday`` or ``:friday``.
* **Generate the public/private key pair on a node** The ``local_key_generation`` setting has been added to the |client rb| file. When ``true``, key pairs will be generated on the node and the public key will be sent to the |chef server|.

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


|resource package_windows| Resource
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_package_windows.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_windows_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_windows_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_windows_attributes.rst

``guard_interpreter`` Attribute
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_common_guard_interpreter.rst

|resource powershell_script| Attributes
-----------------------------------------------------
The following attributes have been added to the |resource powershell_script| resource:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``convert_boolean_return``
     - |convert_boolean_return|

.. include:: ../../step_resource/step_resource_powershell_convert_boolean_return.rst

``knife ssl check``
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_ssl_check.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ssl_check_syntax.rst

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
.. include:: ../../includes_knife/includes_knife_ssl_fetch.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_ssl_fetch_syntax.rst

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

knife node run list add
+++++++++++++++++++++++++++++++++++++++++++++++++++++

``-b ITEM``, ``--before ITEM``
   |before|

|chef client| Options
-----------------------------------------------------
New options have been added to the |chef client|:

``-r RUN_LIST_ITEM``, ``--runlist RUN_LIST_ITEM``
   |runlist_items|


|client rb| Settings
-----------------------------------------------------
New settings have been added to the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``local_key_generation``
     - Use to specify whether the |chef server| or |chef client| will generate the private/public key pair. When ``true``, the |chef client| will generate the key pair, and then send the public key to the |chef server|. For example:
       ::
 
          local_key_generation false

Disable |ohai| plugins
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_ohai.rst

Use the following setting to disable plugins:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``Ohai::Config[:disabled_plugins]``
     - |disable plugin_ohai| For example:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin]

       or:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin, :MyPlugin, :MyPlugin]

       or to disable both |ohai 6| and |ohai 7| versions:
       ::
 
          Ohai::Config[:disabled_plugins] = [:MyPlugin, :MyPlugin, "my_ohai_6_plugin"]


Changelog
=====================================================
https://github.com/opscode/chef/blob/11-stable/CHANGELOG.md

.. What's Fixed
.. =====================================================
.. The following bugs were fixed:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. What's Improved
.. =====================================================
.. The following improvements were made:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. New Features
.. =====================================================
.. The following features were added:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx