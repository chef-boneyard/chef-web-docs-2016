=====================================================
Release Notes: |chef server osc| 11.1
=====================================================

.. include:: ../../includes_chef/includes_chef_index_osc.rst

.. warning:: This page details an upcoming release of the |chef server osc| server.

What's New
=====================================================
The following items are new for |chef server osc| 11.1 and/or are changes from previous versions. The short version:

* **Support for IPv6** Support has been added to allow the |chef server osc| server and the |chef client| to run in an IPv6 infrastructure.
* **Support for Proxy/Firewalls** Support has been added to allow the |chef server osc| server to work through proxies and firewalls by using vhost.
* **Support for Amazon S3** Support has been added to allow the |chef server osc| server to use Amazon S3 to store cookbooks.
* **Gecode Depsolver** The |chef server osc| server switches back to using the Geocode depsolver. This resolves some cookbook dependency issues that were seen by some users due to the less-robust nature of the |erlang|-based dependency solver that was added in |chef server osc| 11.0.
* **RabbitMQ port changes** The port used by |rabbitmq| is changed from 5672 to 8672. This resolves a conflict with the default port on the |redhat| 6 platform.
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
     - Use to enable IPv6 and run |chef server osc| in "dual IPv4/IPv6 mode". When this setting is ``ipv6``, the |chef server osc| server will use IPv6 for all internal comunication and will be able to accept external communications that are using IPv6 (via the |nginx| load balancer). Default value: ``ipv4``.

       .. note:: Setting ``ip_version`` to true will also set ``nginx['enable_ipv6']`` to ``true``.

If a URL is set to a literal IPv6 address (and not a hostname), the IPv6 address must be bracketed (``[ ]``) or the |chef server osc| server will not be able to recognize it as an IPv6 address. For example:

.. code-block:: ruby

   bookshelf['url'] "https://[2001:db8:85a3:8d3:1319:8a2e:370:7348]"

Nginx and IPv6
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following setting is used to configure Nginx support for IPv6 in |chef server osc|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['enable_ipv6']``
     - Use to enable IPv6. Default value: ``false``. This setting is automatically set to true when ``ip_version`` is set to ``true`` in the ``chef-server.rb`` file. If the ``ip_version`` is subsequently set to ``false``, the |chef server osc| will use IPv4; however, Nginx will continue to use IPv6 connections.

Amazon S3 Settings
-----------------------------------------------------
The following settings are used to configure S3 for storing cookbooks:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bookshelf['s3_external_url']``
     - Use to specify the URL used by the |chef server osc| server, when it communicates with S3.
   * - ``bookshelf['s3_url']``
     - Use to specify the URL used that is returned to the |chef client| so that they may communicate with S3. This ensures each |chef client| may be located on the other side of the proxy/firewall from the |chef server osc| server.

	 
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