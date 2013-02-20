=====================================================
Chef Server Topics
=====================================================

.. note:: This page is a work in progress. Right now, the only content that is here is for |chef private| as it existed up until February 4, 2013.

.. include:: ../../includes_chef/includes_chef.rst



Chef Server 11.x
=====================================================
.. note:: This section is a work in progress.

**The basics:** :doc:`Chef Overview </chef_overview>` | Engagement with Opscode | Opscode Support | System Requirements

**Components:** Nginx | Erchef | Bookshelf | chef-webui | RabbitMQ | chef-expander | chef-solr | PostgreSQL

**Topologies:** Standalone | Tiered | High Availability | Options

**Install:** Open Source **Private Chef:** Standalone | Tiered | High Availability **Migrate:** Open Source >> Hosted Chef | chef-pedant | Ommibus

**System Analysis and Tuning:** Settings | Performance | Backup / Restore | Security | Hardening | High Availability

**Manager:** Open Source | Hosted Chef | Private Chef

**Monitor:** Database | Cookbooks | Log Files | Services | Ports | chef-pedant | Nagios | Graphite

**Reference:** chef-server-ctl | private-chef-ctl | chef-server.rb | private-chef-server.rb | Chef Server API | Files, Folders, and Directories




Private Chef 1.4.4
=====================================================
.. note:: This section is about the version of |chef private| that existed up until February 4, 2013.

.. include:: ../../includes_private_chef_1_4_4/includes_private_chef_1_4_4.rst

* :doc:`Engagement </private_chef_1_4_4_engage>`
* :doc:`Architecture </private_chef_1_4_4_architecture>`
* :doc:`Installation </private_chef_1_4_4_install>`
* :doc:`Administration </private_chef_1_4_4_admin>`
* :doc:`Support </private_chef_1_4_4_support>`

.. note:: Unless otherwise stated, all the commands in the documentation for |chef private| should be run as root, either directly or via the ``sudo`` command.

.. Hide the TOC from this file. Just keep these alphabetized please.

.. toctree::
   :hidden:

   chef_pedant
   ctl_chef_server
   install_server
   chef_overview
   api_chef_server
   api_cookbooks_site
   manage_server_hosted
   manage_server_open_source
   migrate_to_hosted
   server_rb
   solo_rb
   solr_rb

   private_chef_1_4_4
   private_chef_1_4_4_engage
   private_chef_1_4_4_architecture
   private_chef_1_4_4_install
   private_chef_1_4_4_admin
   private_chef_1_4_4_support




