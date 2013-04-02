=====================================================
Private Chef 1.x.x Administration
=====================================================

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin.rst




private-chef-ctl
=====================================================

.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef.rst

backup-recover
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_backup_recover.rst

cleanse
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_cleanse.rst

ha-status
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_ha_status.rst

help
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_help.rst

master-recover
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_master_recover.rst

password
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_password.rst

reconfigure
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_reconfigure.rst

show-config
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_show_config.rst

uninstall
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_uninstall.rst

Service Subcommands
-----------------------------------------------------
|chef private| has a built in process supervisor, which ensures that all of the required services are in the appropriate state at any given time. The supervisor starts two processes per service.

hup
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_hup.rst

int
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_int.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_kill.rst

once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_once.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_restart.rst

service-list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_service_list.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_start.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status.rst

High Availability
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_ha.rst

Log Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_logs.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_stop.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

term
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_term.rst







Logs
=====================================================
.. include:: ../../includes_log_files/includes_log_files.rst

View Logs
-----------------------------------------------------
.. include:: ../../includes_log_files/includes_log_files_view.rst

Services
-----------------------------------------------------
The following services used by |chef private| generate log files:

couchdb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_couchdb.rst

fcgiwrap
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_fcgiwrap.rst

nagios
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_nagios.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_nginx.rst

**Access Logs**

.. include:: ../../includes_log_files/includes_log_files_services_nginx_read_logs.rst

nrpe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_nrpe.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_account.rst

opscode-authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_authz.rst

opscode-certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_certificate.rst

opscode-chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_chef.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_expander_reindexer.rst

opscode-expander-reindexer
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_expander.rst

opscode-org-creator
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_org_creator.rst

opscode-solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_solr.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_opscode_webui.rst

phpfpm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_phpfpm.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_postgresql.rst

rabbitmq
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_rabbitmq.rst

redis
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_log_files/includes_log_files_services_redis.rst


User Management
=====================================================
The following tasks can be done around user management.

Change Password
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_change_password.rst

Create User
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_create.rst

Edit Profile
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_edit_profile.rst

Recover Password
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_recover_password.rst

Regenerate Private Key
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_regenerate_private_key.rst

View Profile
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_user_management_view_profile.rst

High Availability
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha.rst

Scalability
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scalability.rst

Failover and Recovery
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_failover.rst

Graceful Transitions
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_transitions.rst

DRBD
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_drbd.rst

Split Brains (yum)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_drbd_split_brain.rst

Split-brain Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_drbd_handlers.rst

Assumptions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_drbd_assumptions.rst

Failure Scenarios
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scenario.rst

Scenarios 1 and 2
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scenario_1and2.rst

Scenario 3
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scenario_3.rst

Scenario 4
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scenario_4.rst

Scenario 5
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_ha_scenario_5.rst

orgmapper
=====================================================
|orgmapper desc|

Examples
-----------------------------------------------------
The following examples show how to use |orgmapper|:

**Start orgmapper**

.. include:: ../../step_orgmapper/step_orgmapper_start.rst

**Find users in an organization**

.. include:: ../../step_orgmapper/step_orgmapper_find_user_by_org.rst

**Find organizations for a user**

.. include:: ../../step_orgmapper/step_orgmapper_find_org_by_user.rst

**Find a user name based on email address**

.. include:: ../../step_orgmapper/step_orgmapper_find_user_by_email.rst

**Associate a user to an organization**

.. include:: ../../step_orgmapper/step_orgmapper_associate_user_to_org.rst

**Add a user to organization's admin group**

.. include:: ../../step_orgmapper/step_orgmapper_add_user_to_admin_group.rst

**Remove a user from organization's admin group**

.. include:: ../../step_orgmapper/step_orgmapper_remove_user_from_admin_group.rst

**Delete a user**

.. include:: ../../step_orgmapper/step_orgmapper_delete_user.rst

Upgrade Private Chef
=====================================================
There are two upgrade scenarios for |chef private|: standalone and high availability.

Standalone Upgrade
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_standalone.rst

High Availability Upgrade
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha.rst

Identify Bootstrap Server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_identify_bootstrap_server.rst

Identify Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_identify_backend_master.rst

Set Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_set_backend_master.rst

Upgrade Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_backend_master.rst

Validate Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_validate_backend_master.rst

Copy Configuration to Nodes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_copy_config_to_nodes.rst

Upgrade Backend Slave
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_backend_slave.rst

Upgrade Front End
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_upgrade_ha_upgrade_front_end.rst

Active Directory / LDAP
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_adldap.rst

Login when AD / LDAP Enabled
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_adldap_login_enabled.rst

First-time Login
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_adldap_login_first_time.rst

Accessing Chef
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_adldap_enable_then_access.rst

Accessing when AD/LDAP is down
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_adldap_access_when_down.rst


Configure Private Chef
=====================================================
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure.rst

Apply Configuration Changes
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_apply_changes.rst

Common Options
-----------------------------------------------------
The following options are common for the |chef private| server.

topology
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_topology.rst

notification_email
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_notification_email.rst

from_email
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_from_email.rst

server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_server.rst

api_fqdn
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_api_fqdn.rst

backend_vip
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_common_backend_vip.rst

General Options
-----------------------------------------------------
The vast majority of configurations are achieved using only the common options listed previously. |chef private| does offer additional configuration and this section lists them all. Please consider talking with an |opscode| solutions engineer about these settings before making changes.

bootstrap
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_bootstrap.rst

couchdb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_couchdb.rst

database
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_database.rst

drbd
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_drbd.rst

keepalived
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_keepalived.rst

lb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_lb_internal.rst

lb_internal
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_lb.rst

ldap
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_ldap.rst

log_retention
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_log_retention.rst

log_rotation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_log_rotation.rst

mysql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_mysql.rst

nagios
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_nagois.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_nginx.rst

nrpe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_nrpe.rst

opscode_account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_account.rst

opscode_authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_authz.rst

opscode_certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_certificate.rst

opscode_chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_chef.rst

opscode_erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_erchef.rst

opscode_expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_expander.rst

opscode_org_creator
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_org_creator.rst

opscode_solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_solr.rst

opscode_webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_opscode_webui.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_postgresql.rst

rabbitmq
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_rabbitmq.rst

redis
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_redis.rst

user
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_configure_general_user.rst












































