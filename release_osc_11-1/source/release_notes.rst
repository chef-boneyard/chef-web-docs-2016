=====================================================
Release Notes: |chef server osc| 11.1
=====================================================

.. include:: ../../includes_chef/includes_chef_index_osc.rst

.. warning:: This page details an upcoming release of the |chef server osc| server.

What's New
=====================================================
The following items are new for |chef server osc| 11.1 and/or are changes from previous versions. The short version:

* **Support for IPv6** Support has been added to allow the |chef server osc| server and the |chef client| to run in an IPv6 infrastructure.
* **Custom Cookbook Storage** Support has been added to allow the |chef server osc| server to store cookbooks in a non-default location.
* **Support for Custom Proxy and Firewall Settings for Cookbook Storage** Support has been added to allow the |chef server osc| server to a non-Bookshelf location to store cookbooks.
* **Gecode Depsolver** The |chef server osc| server switches back to using the Gecode depsolver. This resolves cookbook dependency issues that were seen by some users due to the less-robust nature of the |erlang|-based dependency solver that was added in |chef server osc| 11.0.
* **RabbitMQ default port changes** The default port used by |rabbitmq| is changed from 5672 to 8672. This resolves a conflict with the default port on the |redhat| 6 platform.
* **chef-server-ctl upgrade** A new subcommand is available for upgrading the |chef server osc| server in standalone topologies.


Support for IPv6
-----------------------------------------------------
The |chef server osc| server supports IPv6. Set the ``ip_version`` setting in the ``chef-server.rb`` file to ``ipv6`` to enable IPv6 mode. Once enabled, the |chef server osc| server will accept IPv6 connections internally and externally and will listen for both IPv4 and IPv6 connections for certain services. (The |chef server osc| server will continue to accept IPv4 connections as well.)

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ip_version``
     - Use to enable IPv6 and run |chef server osc| in "dual IPv4/IPv6 mode". When this setting is ``ipv6``, the |chef server osc| server will use IPv6 for all internal comunication and will be able to accept external communications that are using IPv6 (via the |nginx| load balancer). Default value: ``ipv4``. For example:
	   
	   .. code-block:: ruby
	   
	      ip_version ipv6
       
	   without an equals symbol (``=``).

       .. note:: Setting ``ip_version`` to ``ipv6`` will also set ``nginx['enable_ipv6']`` to ``true``.

Literal IPv6 Addresses
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If a URL is set to a literal IPv6 address (and not a hostname), the IPv6 address must be bracketed (``[ ]``) or the |chef server osc| server will not be able to recognize it as an IPv6 address. For example:

.. code-block:: ruby

   bookshelf['url'] "https://[2001:db8:85a3:8d3:1319:8a2e:370:7348]"

Nginx and IPv6
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following setting is used to configure |nginx| support for IPv6 in |chef server osc|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['enable_ipv6']``
     - Use to enable IPv6 handling for |nginx|. Default value: ``false``. This setting is automatically set to true when ``ip_version`` is set to ``ipv6``.

Custom Cookbook Storage
-----------------------------------------------------
By defalt, |chef server osc| stores cookbooks in a location called |chef bookshelf|. |chef server osc| is designed for a standalone configuration, which means this location is on the same physical machine. It is possible to configure this location so that is not on the same physical machine. For example, |chef bookshelf| can be moved to a location that is hosted on |amazon s3|.

The following settings may be changed to support the storing of cookbook in a non-default location: 

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bookshelf['s3_external_url']``
     - Use to specify the URL from which the |chef client| will download cookbooks. If this location is behind a firewall, this setting must be a URL that is accessible to the |chef client|.
   * - ``bookshelf['s3_url']``
     - Use to specify the URL at which cookbooks are stored.


 
chef-server-ctl upgrade
-----------------------------------------------------
The ``chef-server-ctl`` command has a new subcommand: ``upgrade``:

``upgrade``
   Use for in-place upgrades of the |chef server osc| server, version 11.0.4 (or higher). This subcommand will apply the necessary SQL changes without having to back up data and install the server from scratch. (Data should still be backed up before performing the upgrade, just to ensure that it is available, should it be needed.)
   
   .. note:: This subcommand may only be used when the |chef server osc| server is configured for a standalone topology and it assumes that all services used by |chef server osc| are enabled.



Changelog
=====================================================
https://github.com/opscode/omnibus-chef-server/blob/master/CHANGELOG.md

What's Fixed
=====================================================
The following bugs were fixed:

* `CHEF-5038 <http://tickets.opscode.com/browse/CHEF-5038>`_  --- Setting NGINX logs to non-standard dir in chef-server doesn't work
* `CHEF-5031 <http://tickets.opscode.com/browse/CHEF-5031>`_  --- chef-server-ctl reconfigure breaks if chef_pedant or estatsd settings are in chef-server.rb
* `CHEF-4576 <http://tickets.opscode.com/browse/CHEF-4576>`_  --- Chef Server nginx should be compiled with ipv6 support
* `CHEF-4511 <http://tickets.opscode.com/browse/CHEF-4511>`_  --- Error in chef_wm/rebar.config
* `CHEF-4504 <http://tickets.opscode.com/browse/CHEF-4504>`_  --- knife upload interupts with "500 Internal Server Error"
* `CHEF-4382 <http://tickets.opscode.com/browse/CHEF-4382>`_  --- using a non-default postgresql['port'] in chef-server.rb breaks "chef-server-ctl reconfigure"
* `CHEF-4346 <http://tickets.opscode.com/browse/CHEF-4346>`_  --- Default Rabbitmq port should be changed to avoid collision with qpidd
* `CHEF-4235 <http://tickets.opscode.com/browse/CHEF-4235>`_  --- Chef Omnibus cannot be configured with non-default postgres port
* `CHEF-4188 <http://tickets.opscode.com/browse/CHEF-4188>`_  --- runit embedded in chef-server /etc/inittab entry conflicts with user-installed runit
* `CHEF-4086 <http://tickets.opscode.com/browse/CHEF-4086>`_  --- getting a latest cookbook list from erchef over split horizon DNS results in great vengeance and furious anger
* `CHEF-3991 <http://tickets.opscode.com/browse/CHEF-3991>`_  --- Dialyzer fix for estatsd
* `CHEF-3976 <http://tickets.opscode.com/browse/CHEF-3976>`_  --- chef_objects rejects "provides 'service[foo]'"" in metadata
* `CHEF-3975 <http://tickets.opscode.com/browse/CHEF-3975>`_  --- Searching for compound attributes in data bags will not yield results
* `CHEF-3921 <http://tickets.opscode.com/browse/CHEF-3921>`_  --- Missing Dependency causes chef server to consume all the CPU
* `CHEF-3838 <http://tickets.opscode.com/browse/CHEF-3838>`_  --- RabbitMQ does not start on Oracle or Amazon Linux
* `CHEF-2380 <http://tickets.opscode.com/browse/CHEF-2380>`_  --- Clients Should be Able to Upload Their Own Public Keys to Chef-Server
* `CHEF-2245 <http://tickets.opscode.com/browse/CHEF-2245>`_  --- chef-solr jetty request logs go into /var/chef/solr-jetty/logs instead of /var/log/chef

For the |chef server oec| web user interface, the following bugs were fixed:

* `CHEF-5284 <http://tickets.opscode.com/browse/CHEF-5284>`_  --- Upgrade Rails to 3.2.18
* `CHEF-5242 <http://tickets.opscode.com/browse/CHEF-5242>`_  --- Fix Extra Apostrophe in webui JSON editor
* `CHEF-5056 <http://tickets.opscode.com/browse/CHEF-5056>`_  --- Upgrade Rails to 3.2.17
* `CHEF-4858 <http://tickets.opscode.com/browse/CHEF-4858>`_  --- Upgrade chef-server-webui Rails to 3.2.16
* `CHEF-4757 <http://tickets.opscode.com/browse/CHEF-4757>`_  --- ruby cookbook file in web UI shows up as "Binary file not shown"
* `CHEF-4403 <http://tickets.opscode.com/browse/CHEF-4403>`_  --- Environment edit screen: Stop json being escaped as html
* `CHEF-4040 <http://tickets.opscode.com/browse/CHEF-4040>`_  --- Environment existing settings are not displayed correctly when editing environments or nodes via the WebUI
* `CHEF-4004 <http://tickets.opscode.com/browse/CHEF-4004>`_  --- Select to Close Existing Environment Run List Uses Incorrect Rails Helper
* `CHEF-3952 <http://tickets.opscode.com/browse/CHEF-3952>`_  --- Cookbook view reports ERROR: undefined method 'close!' for nil:NilClass
* `CHEF-3951 <http://tickets.opscode.com/browse/CHEF-3951>`_  --- databag item creation not possible
* `CHEF-3883 <http://tickets.opscode.com/browse/CHEF-3883>`_  --- Chef 11 status page does not list all nodes
* `CHEF-3267 <http://tickets.opscode.com/browse/CHEF-3267>`_  --- webui status page doesn't respect environment selection
* `CHEF-2060 <http://tickets.opscode.com/browse/CHEF-2060>`_  --- Auto-complete is enabled in Chef html - /users/login_exec
 
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