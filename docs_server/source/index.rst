=====================================================
Chef Server Topics
=====================================================

.. note:: This page is a work in progress. Right now, the only content that is here is for |chef private| as it existed up until February 4, 2013.

.. include:: ../../includes_chef/includes_chef.rst



Chef Server 11.x
=====================================================
.. note:: This section is a work in progress.

**The basics:** :doc:`Chef Overview </chef_overview>` | Engagement with Opscode | Opscode Support

**Components:** Nginx | Erchef | Bookshelf | chef-webui | RabbitMQ | chef-expander | chef-solr | PostgreSQL

**Topologies:** Standalone | Tiered | High Availability | Options

**Install:** Open Source **Private Chef:** Standalone | Tiered | High Availability **Migrate:** Open Source >> Hosted Chef

**System Analysis and Tuning:** Settings | Performance | Backup / Restore | Security | Hardening | High Availability

**Manager:** Open Source | Hosted Chef | Private Chef

**Monitor:** Database | Cookbooks | Log Files | Services | Ports

**Reference:** chef-server-ctl | chef-server.rb | Chef Server API | Files, Folders, and Directories




Private Chef 10.x
=====================================================
.. note:: This section is about the version of |chef private| that existed up until February 4, 2013.

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x.rst

* :doc:`Engagement </private_chef_1x_engage>`
* :doc:`Architecture </private_chef_1x_architecture>`
* :doc:`Installation </private_chef_1x_install>`
* :doc:`Administration </private_chef_1x_admin>`
* :doc:`Support </private_chef_1x_support>`

.. note:: Unless otherwise stated, all the commands in this manual should be run as root, either directly or via the ``sudo`` command.

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

   private_chef_1x_engage
   private_chef_1x_architecture
   private_chef_1x_install
   private_chef_1x_admin
   private_chef_1x_support




