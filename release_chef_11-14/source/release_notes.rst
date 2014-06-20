=====================================================
Release Notes: |chef client| 11.14.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

https://github.com/opscode/chef/blob/master/DOC_CHANGES.md

What's New
=====================================================
The following items are new for |chef 11-14| and/or are changes from previous versions. The short version:

* **New knife share subcommand** Use |subcommand knife share| to configure |chef zero| on the local machine.
* **New argument for knife node** The |subcommand knife node| subcommand has a new argument: ``environment set``. Use it to set the environment for a node, but without the need to edit the node object.
* **ENV proxy configuration based on configuration settings** Use ``http_proxy``, ``https_proxy``, ``ftp_proxy``, or ``no_proxy`` in the |client rb| file to have the |chef client| automatically set the environment variable.

knife share
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_share.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_share_syntax.rst

**Options**

|no_options|

knife node environment set
-----------------------------------------------------
The |subcommand knife node| subcommand has a new argument: ``environment_set``.

.. include:: ../../includes_knife/includes_knife_node_environment_set.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_node_environment_set_syntax.rst

New |client rb| Settings
-----------------------------------------------------
The following settings have been added to |client rb|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``cookbook_sync_threads``
     - Use to specify the nuber of helper threads available for parallel cookbook synchronization. Increasing this value **may** increase the frequency of gateway errors from the |chef server| (503 and 504 errors). Decreasing this number will reduce the frequency of gateway errors, if present. Default value: ``10``.
   * - ``ftp_proxy``
     - The proxy server for FTP connections.
   * - ``ftp_proxy_pass``
     - The password for the proxy server when the proxy server is using an FTP connection. Default value: ``nil``.
   * - ``ftp_proxy_user``
     - The user name for the proxy server when the proxy server is using an FTP connection. Default value: ``nil``.
   * - ``yum_lock_timeout``
     - The amount of time (in seconds) after which a |yum| lock request will time out. Default value: ``30``.

New Options for chef-client and chef-solo
-----------------------------------------------------

The following options have been added to |chef client| and |chef solo|:

``--run-lock-timeout SECONDS``
   The amount of time (in seconds) to wait for a |chef client| run to finish. Default value: not set (indefinite).

Automatic Proxy Configuration
-----------------------------------------------------
If ``http_proxy``, ``https_proxy``, ``ftp_proxy``, or ``no_proxy`` is set in the |client rb| file, the |chef client| will configure the ``ENV`` variable based on these (and related) settings. For example:

.. code-block:: ruby

   http_proxy "http://proxy.example.org:8080"
   http_proxy_user "myself"
   http_proxy_pass "Password1"

will be set to:

.. code-block:: ruby

   ENV['http_proxy'] = "http://myself:Password1@proxy.example.org:8080"

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
