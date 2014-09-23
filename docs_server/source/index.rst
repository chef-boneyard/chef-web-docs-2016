.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
The |chef server_title| 
=====================================================

.. include:: ../../includes_chef/includes_chef_index_oec.rst

.. note:: |chef server| 12 is the new |chef server|! The documentation for `Open Source Chef <http://docs.getchef.com/open_source/>`_ and `Enterprise Chef <http://docs.getchef.com/enterprise/>`_ is still available.

Getting Started
=====================================================
If you are new to |chef|, familiarize yourself with its main components: :doc:`the server, workstations, and nodes </chef_overview>`. For more information about workstations, cookbooks, and nodes, see the `documentation for the chef-client <http://docs.getchef.com/client/>`_.

The `Chef supermarket <https://supermarket.getchef.com>`_ is the location in which community cookbooks are authored and maintained. Cookbooks that are part of the |supermarket| may be used by any |chef| user.

Premium Features
=====================================================
The following features are premium features of the |chef server| that may be added and used freely (up to 25 nodes):

* The :doc:`Chef analytics platform </analytics>` provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred.
* :doc:`Chef high availability </server_high_availability>` helps ensure that your |chef| service is uninterrupted within your data center or |amazon aws| region, even if a |chef| server fails. |chef ha| supports using distributed replicated block devices (DRBD) as well as |amazon ebs| volumes and the remapping of elastic IP addresses.
* The :doc:`Chef management console </manage>` provides a web user interface with access to objects, such as nodes and cookbooks, through role-based access control.
* :doc:`Chef replication </server_replication>` provides a way to asynchronously distribute cookbook, environment, role, and data bag data from a single, primary |chef server| to one (or more) replicas of that |chef server|.
* :doc:`Chef reporting </reporting>` enables a tab within the |chef manage| that shows the results of |chef client| runs as they occur across your organization.

Install, Upgrade
=====================================================
The |chef server| can be installed on new hardware. Existing |chef server oec| and |chef server osc| configurations may be upgraded to |chef server| 12.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/install_server.html">Install the Chef Server</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/upgrade_server.html">Upgrade the Chef Server</a> </br>

The premium features of the |chef server| must be installed and configured after the |chef server|. The |chef manage| must be installed before |reporting| because they share the same web user interface. |chef manage|, |reporting|, and |chef replication| can all be installed using the `chef-server-ctl install <http://docs.getchef.com/server/ctl_chef_server.html#install>`_ command. 

The following premium features require additional steps:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/install_analytics.html">Chef Analytics</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/install_push_jobs.html">Chef Push Jobs</a> </br>


Manage the Chef Server
=====================================================
The |chef server| can be managed in the following ways:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/runbook.html">Runbook</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_backup_restore.html">Backup / Restore</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_firewalls_and_ports.html">Firewalls and Ports</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_high_availability.html">High Availability</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_logs.html">Log Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_monitor.html">Monitor</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_orgs.html">Organizations, Groups, and Users</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_replication.html">Replication</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_security.html">Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_services.html">Services</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_tuning.html">Server Tuning</a> </br>


Management Console
-----------------------------------------------------
The |chef manage| provides a web user interface with access to objects, such as nodes and cookbooks, through role-based access control:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_clients.html">Manage Clients</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_cookbooks.html">Manage Cookbooks</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_data_bags.html">Manage Data Bags</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_environments.html">Manage Environments</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_nodes.html">Manage Nodes</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_reports.html">Manage Reports</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/server_manage_roles.html">Manage Roles</a> </br>

Reference
=====================================================
This section contains links to topics about configuration files, command-line tools, and APIs that are used by the |chef server| and its premium features.

**Configuration Files**

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/config_rb_server.html">chef-server.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/config_rb_chef_sync.html">chef-sync.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/config_rb_manage.html">manage.rb</a> </br>

**Command-line Tools**

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/ctl_chef_server.html">chef-server-ctl</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/ctl_chef_sync.html">chef-sync-ctl</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/ctl_opscode_expander.html">opscode-expander-ctl</a> </br>

**APIs**

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/api_chef_server.html">Chef Server API</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/server/api_push_jobs.html">Push Jobs API</a> </br>

.. Hide the TOC from this file. Just keep these alphabetized please.

.. toctree::
   :hidden:

   analytics
   api_chef_server
   api_push_jobs
   chef_overview
   config_rb_chef_server
   config_rb_chef_sync
   config_rb_server
   config_rb_manage
   ctl_chef_sync
   ctl_chef_server
   ctl_opscode_expander
   ctl_private_chef
   ctl_reporting
   high_availability
   install
   install_analytics
   install_bootstrap
   install_dk
   install_push_jobs
   install_reporting
   install_server
   install_server_be
   install_server_fe
   install_server_post
   install_server_pre
   manage
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
   private_chef_1x_admin_ssl
   private_chef_1x_admin_upgrade
   private_chef_1x_admin_user_management
   private_chef_1x_support
   push_jobs
   reporting
   runbook
   server_backup_restore
   server_components
   server_data
   server_firewalls_and_ports
   server_high_availability
   server_ldap
   server_logs
   server_manage_clients
   server_manage_cookbooks
   server_manage_data_bags
   server_manage_environments
   server_manage_nodes
   server_manage_reports
   server_manage_roles
   server_monitor
   server_orgs
   server_replication
   server_security
   server_services
   server_tuning
   server_users
   upgrade_server
   upgrade_server_open_source_notes
