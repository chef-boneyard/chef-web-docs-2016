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

**Engagement:** :doc:`How Consulting Works </private_chef_1x_engage_how_consulting_works>` | :doc:`Pre-Installation Steps </private_chef_1x_engage_preinstall>` | :doc:`Onsite Installation </private_chef_1x_engage_onsite>` | :doc:`Acceptance </private_chef_1x_engage_acceptance>`

**Architecture:** :doc:`Standalone </private_chef_1x_architecture_standalone>` | :doc:`Tiered </private_chef_1x_architecture_tiered>` | :doc:`High Availability </private_chef_1x_architecture_ha>` | :doc:`Modifications </private_chef_1x_architecture_modifications>`

**Architecture:** :doc:`Prerequisites </private_chef_1x_install_prerequisites>` | :doc:`Standalone </private_chef_1x_install_standalone>` | :doc:`Tiered </private_chef_1x_install_tiered>` | :doc:`High Availability </private_chef_1x_install_ha>` | :doc:`Create Users </private_chef_1x_install_create_users>` | :doc:`Create Organization </private_chef_1x_install_create_organization>` | :doc:`AD / LDAP </private_chef_1x_install_ad_ldap>`

**Admin:** :doc:`Configure </private_chef_1x_admin_configure>` | :doc:`Upgrade </private_chef_1x_admin_upgrade>` | :doc:`High Availability </private_chef_1x_admin_ha>` | :doc:`Logs </private_chef_1x_admin_logs>` | :doc:`AD / LDAP </private_chef_1x_admin_ad_ldap>` | :doc:`User Management </private_chef_1x_admin_user_management>` | :doc:`orgmapper </private_chef_1x_admin_orgmapper>` | :doc:`private-chef-ctl </private_chef_1x_admin_private_chef_ctl>`

Contact |opscode| :doc:`Support </private_chef_1x_support>` for additional questions.

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
   private_chef_1x_engage_acceptance
   private_chef_1x_engage_how_consulting_works
   private_chef_1x_engage_onsite
   private_chef_1x_engage_preinstall
   private_chef_1x_architecture
   private_chef_1x_architecture_ha
   private_chef_1x_architecture_modifications
   private_chef_1x_architecture_standalone
   private_chef_1x_architecture_tiered
   private_chef_1x_install
   private_chef_1x_install_ad_ldap
   private_chef_1x_install_create_organization
   private_chef_1x_install_create_users
   private_chef_1x_install_ha
   private_chef_1x_install_prerequisites
   private_chef_1x_install_standalone
   private_chef_1x_install_tiered
   private_chef_1x_admin
   private_chef_1x_admin_ad_ldap
   private_chef_1x_admin_configure
   private_chef_1x_admin_ha
   private_chef_1x_admin_logs
   private_chef_1x_admin_orgmapper
   private_chef_1x_admin_private_chef_ctl
   private_chef_1x_admin_upgrade
   private_chef_1x_admin_user_management
   private_chef_1x_support
   orgmapper




