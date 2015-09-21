=====================================================
Docs for |chef server oec| 11.2 ...
=====================================================

.. include:: ../../includes_chef/includes_chef_11_index_oec.rst

The |chef server oec| is a centralized location where all of the objects needed by |chef| are stored, including data that has been uploaded from the |chef repo|, data that is needed by the |chef client| while it configures nodes, and data that is uploaded to the |chef server| by the |chef client| at the conclusion of every |chef client| run.

.. note:: This set of topics is only about the |chef server oec| server, version 11.2. For information about the |chef client|, |ohai|, cookbooks, and so on, see |url docs|.

View the :doc:`release notes </release_notes>` for |chef server oec| 11.2.


Server Components
=====================================================
The |chef server oec| acts as a hub for configuration data. The :doc:`components that make up the server </server_components>` work together to store cookbooks, provide a management layer, and databases that store cookbook and node data.

Deployment Scenarios
=====================================================
.. include:: ../../includes_server_deploy/includes_server_deploy.rst

The following sections discuss these deployment configuration options in greater detail:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_deploy_standalone.html">Standalone</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_deploy_be.html">Scaled Back End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_deploy_fe.html">Scaled Front End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_deploy_febe.html">Scaled Front and Back Ends</a> </br>

.. note:: For more information about signing up for hosted |chef server oec|, see https://getchef.chef.io/signup.

Install |chef server oec|
-----------------------------------------------------
The |chef server| can be installed via download or by using the |api omnitruck|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server.html">Install the Enterprise Chef Server</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>

Installation scenarios:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_pre.html">Prerequisites</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_standalone.html">Standalone</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_be.html">Scaled Back End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_fe.html">Scaled Front End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_febe.html">Scaled Front and Back Ends</a> </br>

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/migrate_to_enterprise.html">Migrate from Open Source Chef</a> </br>

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/upgrade_server_standalone.html">Standalone Upgrade</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/upgrade_server_ha.html">High Availability Upgrade</a> </br>

Options: 

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_ldap.html">Active Directory / LDAP</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_users.html">Create Users</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/install_server_orgs.html">Create Organizations</a> </br>

Manage |chef server oec|
=====================================================
The |chef server| can be managed in the following ways:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_backup_restore.html">Backup and Restore</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_firewalls_and_ports.html">Firewalls and Ports</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_high_availability.html">High Availability</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_ldap.html">LDAP / Active Directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_logs.html">Logs</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_monitor.html">Monitor</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_tuning.html">Performance Tuning</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_security.html">Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_services.html">Services</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/server_users.html">Users</a> </br>

Settings and Tools 
=====================================================
The following settings files are used to configure behavior for the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/config_rb_chef_server_enterprise.html">private-chef.rb</a> </br>

The following command-line tools can be run on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/orgmapper.html">orgmapper</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/ctl_private_chef.html">private-chef-ctl</a> </br>

APIs
=====================================================
The following APIs can be used to access data on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/oec_11-2/api_chef_server.html">Chef Server API</a> </br>


.. Hide the TOC from this file.

.. toctree::
   :hidden:

   api_chef_server
   auth
   chef_search
   config_rb_chef_server_enterprise
   config_rb_chef_server_enterprise_optional_settings
   ctl_private_chef
   install_server
   install_server_be
   install_server_fe
   install_server_febe
   install_server_hosted
   install_server_ldap
   install_server_orgs
   install_server_pre
   install_server_standalone
   install_server_users
   migrate_to_enterprise
   oec_overview
   orgmapper
   release_notes
   server_backup_restore
   server_components
   server_deploy_be
   server_deploy_fe
   server_deploy_febe
   server_deploy_standalone
   server_firewalls_and_ports
   server_high_availability
   server_ldap
   server_logs
   server_monitor
   server_orgs
   server_security
   server_services
   server_tuning
   server_users
   upgrade_server_ha
   upgrade_server_ha_notes
   upgrade_server_standalone
   upgrade_server_standalone_notes