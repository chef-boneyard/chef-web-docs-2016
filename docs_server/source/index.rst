=====================================================
Chef Server Topics
=====================================================

.. note:: This page is a work in progress. Right now, the only content that is here is for |chef private| as it existed up until February 4, 2013.

.. include:: ../../includes_chef/includes_chef.rst



Chef Server 11.x
=====================================================
.. note:: This section is a work in progress.

**The basics:** :doc:`Chef Overview </chef_overview>` | Engagement with Opscode | Opscode Support | System Requirements | :doc:`Components </server_components>`

**Components:** Nginx | Erchef | Bookshelf | chef-webui | Search Index Queues (RabbitMQ | chef-expander | chef-solr) | PostgreSQL

**Topologies:** Standalone | Tiered | High Availability | Options

**Install:** Open Source **Private Chef:** Standalone | Tiered | High Availability **Hosted Chef::** Sign Up

**Migrate:** Open Source >> Hosted Chef | chef-pedant | Ommibus

**System Analysis and Tuning:** Settings | Performance | Backup / Restore | Security | Hardening | Firewall | High Availability | Ports (Chef 11 runs on ports 80 and 443)

**Manage:** Open Source | Hosted Chef | Private Chef

**Monitor:** Database | Cookbooks | Log Files | Services | Ports | chef-pedant | Nagios | Graphite

**Tools:** :doc:`orgmapper </orgmapper>`

**Reference:** :doc:`ctl-chef-server </ctl_chef_server>` | :doc:`private-chef-ctl </ctl_private_chef>` | chef-server.rb | private-chef-server.rb | Chef Server API | Files, Folders, and Directories






Private Chef 1.x.x
=====================================================
.. note:: This section is about the version of |chef private| that existed up until February 4, 2013.

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x.rst

* :doc:`Engagement </private_chef_1x_engage>`
* :doc:`Architecture </private_chef_1x_architecture>`
* :doc:`Installation </private_chef_1x_install>`
* :doc:`Administration </private_chef_1x_admin>`
* :doc:`Support </private_chef_1x_support>`

.. note:: Unless otherwise stated, all the commands in the documentation for |chef private| should be run as root, either directly or via the ``sudo`` command.

.. Hide the TOC from this file. Just keep these alphabetized please.

.. toctree::
   :hidden:

   chef_pedant
   ctl_chef_server
   ctl_private_chef
   install_server
   install_server_scenario_vm
   chef_overview
   api_chef_server
   api_cookbooks_site
   manage_server_hosted
   manage_server_open_source
   migrate_to_hosted
   config_server_rb
   config_solo_rb
   config_solr_rb
   server_components
   private_chef_1x
   private_chef_1x_engage
   private_chef_1x_architecture
   private_chef_1x_install
   private_chef_1x_admin
   private_chef_1x_support
   orgmapper
   log_files



