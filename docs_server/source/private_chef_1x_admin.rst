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
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs.rst

View Logs
-----------------------------------------------------
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_view.rst

Services
-----------------------------------------------------
The following services used by |chef private| generate log files:

couchdb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_couchdb.rst

fcgiwrap
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_fcgiwrap.rst

nagios
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_nagios.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_nginx.rst

**Access Logs**

.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_nginx_read_logs.rst

nrpe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_nrpe.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_account.rst

opscode-authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_authz.rst

opscode-certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_certificate.rst

opscode-chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_chef.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_expander_reindexer.rst

opscode-expander-reindexer
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_expander.rst

opscode-org-creator
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_org_creator.rst

opscode-solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_solr.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_opscode_webui.rst

phpfpm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_phpfpm.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_postgresql.rst

rabbitmq
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_rabbitmq.rst

redis
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_1x/includes_private_chef_1x_admin_logs_services_redis.rst


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
While the vast majority of common configurations are achieved with only the
common options listed above, Private Chef provides many possible configuration
options. This section lists them all - you likely only want to change them
in consultation with your Opscode Solutions Engineer's oversight.

bootstrap['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether we should attempt to bootstrap the private chef system. Typically
turned on only on systems that have bootstrap enabled via a ``server``
entry.

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  bootstrap['enable'] = true



couchdb['batch_save_interval']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The time in milliseconds within which we will save documents to disk,
regardless of how many have been written.

*Default Value*:

.. code-block:: ruby

  1000

*Example*:

.. code-block:: ruby

  couchdb['batch_save_interval'] = 1000



couchdb['batch_save_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The number of documents that will trigger a batch save.

*Default Value*:

.. code-block:: ruby

  1000

*Example*:

.. code-block:: ruby

  couchdb['batch_save_size'] = 1000



couchdb['bind_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The address that CouchDB will bind to.

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  couchdb['bind_address'] = "127.0.0.1"



couchdb['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Where CouchDB will store its on-disk data.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/couchdb/db"

*Example*:

.. code-block:: ruby

  couchdb['data_dir'] = "/var/opt/opscode/couchdb/db"


couchdb['delayed_commits']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether commits are delayed. For performance, we tune CouchDB to batch
commits according to the ``batch_save_interval`` and ``batch_save_size``
options above.

*Default Value*:

.. code-block:: ruby

  "true"

*Example*:

.. code-block:: ruby

  couchdb['delayed_commits'] = "true"



couchdb['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The base directory for CouchDB data.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/couchdb"

*Example*:

.. code-block:: ruby

  couchdb['dir'] = "/var/opt/opscode/couchdb"



couchdb['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether the CouchDB service is enabled on this server or not. Usually
managed by the ``role`` a server has in its ``server`` entry.

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  couchdb['enable'] = true



couchdb['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether CouchDB is running in an HA configuration. Typically managed
by the ``topology`` of the cluster and the ``role`` this server plays.
Causes the CouchDB service to be ``down`` by default.

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  couchdb['ha'] = false



couchdb['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The base directory for CouchDB log data.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/couchdb"

*Example*:

.. code-block:: ruby

  couchdb['log_directory'] = "/var/log/opscode/couchdb"



couchdb['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  couchdb['svlogd_size'] = 1000000



couchdb['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  couchdb['svlogd_num'] = 10



couchdb['log_level']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The verbosity of the CouchDB logs.

*Default Value*:

.. code-block:: ruby

  "error"

*Options*:

- **error** (default): Only log errors
- **info**: Log high level connection information
- **debug**: Low level debugging information

*Example*:

.. code-block:: ruby

  couchdb['log_level'] = "error"



couchdb['max_attachment_chunk_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum attachment size.

*Default Value*:

.. code-block:: ruby

  "4294967296"

*Example*:

.. code-block:: ruby

  couchdb['max_attachment_chunk_size'] = "4294967296"



couchdb['max_dbs_open']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum number of open databases.

*Default Value*:

.. code-block:: ruby

  10000

*Example*:

.. code-block:: ruby

  couchdb['max_dbs_open'] = 10000



couchdb['max_document_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum size of a document.

*Default Value*:

.. code-block:: ruby

  "4294967296"

*Example*:

.. code-block:: ruby

  couchdb['max_document_size'] = "4294967296"



couchdb['os_process_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

How long before timing out external processes, in milliseconds.

*Default Value*:

.. code-block:: ruby

  "300000"

*Example*:

.. code-block:: ruby

  couchdb['os_process_timeout'] = "300000"



couchdb['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The port CouchDB will listen on.

*Default Value*:

.. code-block:: ruby

  5984

*Example*:

.. code-block:: ruby

  couchdb['port'] = 5984



couchdb['reduce_limit']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Disable limiting the number of reduces.

*Default Value*:

.. code-block:: ruby

  "false"

*Example*:

.. code-block:: ruby

  couchdb['reduce_limit'] = "false"



couchdb['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The IP address that other services needing access to CouchDB should use.

.. warning::

  This option is typically set by the ``topology`` and ``role`` a server
  plays.

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  couchdb['vip'] = "127.0.0.1"



database_type
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The type of database we are using. Only ``postgresql`` is fully supported -
while ``mysql`` can be used with Private Chef, it requires the end user to
install and configure both the server itself and the MySQL client libraries.

*Default Value*:

.. code-block:: ruby

  postgresql

*Example*:

.. code-block:: ruby

  database_type "postgresql"



drbd['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Where data that should reside on DRBD should live.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/drbd/data"

*Example*:

.. code-block:: ruby

  drbd['data_dir'] = "/var/opt/opscode/drbd/data"



drbd['device']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The device name to use for DRBD.

*Default Value*:

.. code-block:: ruby

  "/dev/drbd0"

*Example*:

.. code-block:: ruby

  drbd['device'] = "/dev/drbd0"



drbd['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The top level directory for DRBD configuration.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.


*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/drbd"

*Example*:

.. code-block:: ruby

  drbd['dir'] = "/var/opt/opscode/drbd"



drbd['disk']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The local LVM logical volume to use behind DRBD.

*Default Value*:

.. code-block:: ruby

  "/dev/opscode/drbd"

*Example*:

.. code-block:: ruby

  drbd['disk'] = "/dev/opscode/drbd"



drbd['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether or not this server is using DRBD. This is typically set by the ``role`` this server plays - it is enabled on ``backend`` servers in the ``ha`` ``topology``.

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  drbd['enable'] = false



drbd['flexible_meta_disk']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Where DRBD meta-data is stored.

*Default Value*:

.. code-block:: ruby

  "internal"

*Example*:

.. code-block:: ruby

  drbd['flexible_meta_disk'] = "internal"


drbd['primary']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The ``fqdn``, ``ip`` and ``port`` of the server we consider the DRBD
*primary*. This is typically set automatically from the ``server`` entries
with the ``backend`` ``role`` when in an ``ha`` ``topology``.

*Default Value*:

.. code-block:: ruby

  {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}


*Example*:

.. code-block:: ruby

  drbd['primary'] = {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}



drbd['secondary']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Identical to the ``drbd['primary']`` setting, including caveats.

*Default Value*:

.. code-block:: ruby

  {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}


*Example*:

.. code-block:: ruby

  drbd['secondary'] = {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}




drbd['shared_secret']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The shared secret for DRBD.

.. warning::

  This attribute is randomly generated for you when you install the ``bootstrap``
  server. You should not need to set it explicitly.

*Default Value*:

.. code-block:: ruby

  "promisespromises"

*Example*:

.. code-block:: ruby

  drbd['shared_secret'] = "promisespromises"



drbd['sync_rate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The amount of bandwidth to use for data synchronization; typically a small
percentage of the available bandwidth available for DRBD replication.

*Default Value*:

.. code-block:: ruby

  "40M"

*Example*:

.. code-block:: ruby

  drbd['sync_rate'] = "40M"



drbd['version']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The version of DRBD installed on the system. Auto-detected.

*Default Value*:

.. code-block:: ruby

  "8.4.1"

*Example*:

.. code-block:: ruby

  drbd['version'] = "8.4.1"


keepalived['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Where keepalived will store its on-disk data.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/keepalived"

*Example*:

.. code-block:: ruby

  keepalived['dir'] = "/var/opt/opscode/keepalived"


keepalived['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether the keepalived service is enabled on this server or not. Usually
managed by the ``role`` a server has in its ``server`` entry - ``backend``
servers in an ``ha`` ``topology`` will have this enabled.

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  keepalived['enable'] = false

keepalived['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The base directory for keepalived log data.

.. warning::

  While this attribute can be changed, we recommend you do not deviate
  from our typical, supported layout.

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/keepalived"

*Example*:

.. code-block:: ruby

  keepalived['log_directory'] = "/var/log/opscode/keepalived"


keepalived['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  keepalived['svlogd_size'] = 1000000


keepalived['svlogd_num']
v

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  keepalived['svlogd_num'] = 10


keepalived['service_order']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The order that keepalived will start and stop services in on transition from
Primary to Backup.

.. warning::

  Changing this order without consulting with your |opscode| Support Engineer
  will make it very difficult to troubleshoot your ``ha`` cluster.

*Default Value*:

.. code-block:: ruby

   [{"key"=>"couchdb", "service_name"=>"couchdb"},
     {"key"=>"postgresql", "service_name"=>"postgres"},
     {"key"=>"rabbitmq", "service_name"=>"rabbitmq"},
     {"key"=>"redis", "service_name"=>"redis"},
     {"key"=>"opscode-authz", "service_name"=>"opscode-authz"},
     {"key"=>"opscode-certificate", "service_name"=>"opscode-certificate"},
     {"key"=>"opscode-account", "service_name"=>"opscode-account"},
     {"key"=>"opscode-solr", "service_name"=>"opscode-solr"},
     {"key"=>"opscode-expander", "service_name"=>"opscode-expander"},
     {"key"=>"opscode-expander", "service_name"=>"opscode-expander-reindexer"},
     {"key"=>"opscode-org-creator", "service_name"=>"opscode-org-creator"},
     {"key"=>"opscode-chef", "service_name"=>"opscode-chef"},
     {"key"=>"opscode-erchef", "service_name"=>"opscode-erchef"},
     {"key"=>"opscode-webui", "service_name"=>"opscode-webui"},
     {"key"=>"nagios", "service_name"=>"php-fpm"},
     {"key"=>"nagios", "service_name"=>"fcgiwrap"},
     {"key"=>"nagios", "service_name"=>"nagios"},
     {"key"=>"nginx", "service_name"=>"nginx"}]

*Example*:

.. code-block:: ruby

   keepalived['service_order'] = [{"key"=>"couchdb", "service_name"=>"couchdb"},
     {"key"=>"postgresql", "service_name"=>"postgres"},
     {"key"=>"rabbitmq", "service_name"=>"rabbitmq"},
     {"key"=>"redis", "service_name"=>"redis"},
     {"key"=>"opscode-authz", "service_name"=>"opscode-authz"},
     {"key"=>"opscode-certificate", "service_name"=>"opscode-certificate"},
     {"key"=>"opscode-account", "service_name"=>"opscode-account"},
     {"key"=>"opscode-solr", "service_name"=>"opscode-solr"},
     {"key"=>"opscode-expander", "service_name"=>"opscode-expander"},
     {"key"=>"opscode-expander", "service_name"=>"opscode-expander-reindexer"},
     {"key"=>"opscode-org-creator", "service_name"=>"opscode-org-creator"},
     {"key"=>"opscode-chef", "service_name"=>"opscode-chef"},
     {"key"=>"opscode-erchef", "service_name"=>"opscode-erchef"},
     {"key"=>"opscode-webui", "service_name"=>"opscode-webui"},
     {"key"=>"nagios", "service_name"=>"php-fpm"},
     {"key"=>"nagios", "service_name"=>"fcgiwrap"},
     {"key"=>"nagios", "service_name"=>"nagios"},
     {"key"=>"nginx", "service_name"=>"nginx"}]


keepalived['smtp_connect_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

When sending messages about transitions, how long to wait to connect with an STMP server.

*Default Value*:

.. code-block:: ruby

  "30"

*Example*:

.. code-block:: ruby

  keepalived['smtp_connect_timeout'] = "30"


keepalived['smtp_server']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The SMTP server to connect to.

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  keepalived['smtp_server'] = "127.0.0.1"


keepalived['vrrp_instance_advert_int']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

How often should the ``primary`` server advertise, in seconds.

*Default Value*:

.. code-block:: ruby

  "1"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_advert_int'] = "1"


keepalived['vrrp_instance_interface']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The interface to send ``vrrp`` traffic over. On systems with dedicated
interfaces for keepalived traffic, this should be set to the name of the
dedicated interface.

*Default Value*:

.. code-block:: ruby

  "eth0"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_interface'] = "eth0"


keepalived['vrrp_instance_ipaddress']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The virtual IP address to be managed. Typically set by the ``backend_vip``
option.

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_ipaddress'] = "192.168.4.131"


keepalived['vrrp_instance_ipaddress_dev']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The device to add the virtual IP address to.

*Default Value*:

.. code-block:: ruby

  "eth0"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_ipaddress_dev'] = "eth0"


keepalived['vrrp_instance_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The secret key for VRRP pairs.

.. warning::

  This attribute is randomly generated for you when you install the ``bootstrap``
  server. You should not need to set it explicitly.

*Default Value*:

.. code-block:: ruby

  "sneakybeaky"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_password'] = "sneakybeaky"


keepalived['vrrp_instance_priority']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The priority for this server. By default, both servers have equal priority,
which means the cluster will have no preference for which should be primary.
Set to a lower value on the host you want to have be preferred.

*Default Value*:

.. code-block:: ruby

  "100"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_priority'] = "100"


keepalived['vrrp_instance_state']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The default ``vrrp`` state for this server. Should be the same on both
back-end systems.

*Default Value*:

.. code-block:: ruby

  "MASTER"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_state'] = "MASTER"


keepalived['vrrp_instance_virtual_router_id']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The virtual router ID for this keepalived pair. This should be unique
within the multicast domain you are using for keepalived.

*Default Value*:

.. code-block:: ruby

  "1"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_virtual_router_id'] = "1"


keepalived['vrrp_unicast_bind']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The unicast cluster IP address used by keepalived to bind to in order
to talk to its peer.  This should be undefined in order to use multicast.

.. warning::

  This will be configured automatically based on settings derived from the
  /etc/opscode/private-chef.rb file.  Changing this order without consulting
  with your |opscode| Support Engineer will make it very difficult to
  troubleshoot your ``ha`` cluster.

*Default Value*:

.. code-block:: ruby

  <ip address of cluster IP or eth0>

*Example*:

.. code-block:: ruby

  keepalived['vrrp_unicast_bind'] = nil


keepalived['vrrp_unicast_peer']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The unicast cluster IP address used by keepalived to send to in order
to talk to its peer.  This should be undefined in order to use multicast.

.. warning::

  This will be configured automatically based on settings derived from the
  /etc/opscode/private-chef.rb file.  Changing this order without consulting
  with your |opscode| Support Engineer will make it very difficult to
  troubleshoot your ``ha`` cluster.

*Default Value*:

.. code-block:: ruby

  <ip address of peer cluster IP or eth0>

*Example*:

.. code-block:: ruby

  keepalived['vrrp_unicast_peer'] = nil



lb['api_fqdn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  lb['api_fqdn'] = "ubuntu.localdomain"


lb['cache_cookbook_files']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  lb['cache_cookbook_files'] = false


lb['debug']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  lb['debug'] = false



lb['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  lb['enable'] = true



lb['upstream']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"opscode-chef"=>["127.0.0.1"],
    "opscode-erchef"=>["127.0.0.1"],
    "opscode-account"=>["127.0.0.1"],
    "opscode-webui"=>["127.0.0.1"],
    "opscode-authz"=>["127.0.0.1"],
    "opscode-solr"=>["127.0.0.1"]}


*Example*:

.. code-block:: ruby

  lb['upstream'] = {"opscode-chef"=>["127.0.0.1"],
    "opscode-erchef"=>["127.0.0.1"],
    "opscode-account"=>["127.0.0.1"],
    "opscode-webui"=>["127.0.0.1"],
    "opscode-authz"=>["127.0.0.1"],
    "opscode-solr"=>["127.0.0.1"]}


lb['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  lb['vip'] = "127.0.0.1"



lb['web_ui_fqdn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  lb['web_ui_fqdn'] = "ubuntu.localdomain"



lb_internal['account_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9685

*Example*:

.. code-block:: ruby

  lb_internal['account_port'] = 9685



lb_internal['authz_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9683

*Example*:

.. code-block:: ruby

  lb_internal['authz_port'] = 9683



lb_internal['chef_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9680

*Example*:

.. code-block:: ruby

  lb_internal['chef_port'] = 9680



lb_internal['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  lb_internal['enable'] = true



lb_internal['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  lb_internal['vip'] = "127.0.0.1"



ldap['host']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Name (or IP address) of your LDAP server. Be sure that your Private Chef server
can resolve any host names.

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  ldap['host'] = '1.2.3.4'


ldap['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The port your LDAP server listens on.  The default value of ``389`` is good
enough for most installs.

*Default Value*:

.. code-block:: ruby

  389

*Example*:

.. code-block:: ruby

  ldap['port'] = '389'



ldap['ssl_enabled']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Indicates if Private Chef should make SSL-enabled conenctions to the LDAP server.
Be sure SSL is enabled on your LDAP server and ``ldap['port']`` has been updated
with the correct value (usually ``636``).

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  ldap['ssl_enabled'] = true



ldap['bind_dn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The distinguished name used to bind to the LDAP server. This is typically, but
not necessarily, the administrator or manager user. This user needs to have read
access to all LDAP users you hope to authenticate.

Leave this value unset if anonymous bind is sufficient.

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'



ldap['bind_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The password for the binding user set by ``ldap['bind_password']``

Leave this value unset if anonymous bind is sufficient.

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  ldap['bind_password'] = 'supersecret'


ldap['base_dn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The LDAP root node, the top entry (starting point) in the directory.

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'


ldap['login_attribute']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The LDAP attribute holding the user's login name. Typically in Active
Directory it will be ``sAMAccountName``, while in OpenLDAP it is ``uid``.

*Default Value*:

.. code-block:: ruby

  sAMAccountName

*Example*:

.. code-block:: ruby

  ldap['login_attribute'] = 'sAMAccountName'


ldap['system_adjective']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

A descriptive name for your login system that will displayed to users in
the Private Chef management console.  If you enter "corporate," for example,
the webui will talk about things like "the corporate login server",
"corporate login" and "corporate password."

*Default Value*:

.. code-block:: ruby

  AD/LDAP

*Example*:

.. code-block:: ruby

  ldap['system_adjective'] = 'corporate'


mysql['destructive_migrate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  mysql['destructive_migrate'] = false


mysql['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  mysql['enable'] = false


mysql['install_libs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  mysql['install_libs'] = true


mysql['sql_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "snakepliskin"

*Example*:

.. code-block:: ruby

  mysql['sql_password'] = "snakepliskin"


mysql['sql_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef"

*Example*:

.. code-block:: ruby

  mysql['sql_user'] = "opscode_chef"


mysql['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  mysql['vip'] = "127.0.0.1"


nagios['admin_email']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['admin_email'] = "nobody@example.com"


nagios['admin_pager']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['admin_pager'] = "nobody@example.com"


nagios['admin_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  nagios['admin_password'] = "privatechef"


nagios['admin_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nagiosadmin"

*Example*:

.. code-block:: ruby

  nagios['admin_user'] = "nagiosadmin"


nagios['alert_email']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['alert_email'] = "nobody@example.com"


nagios['debug_level']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  0

*Example*:

.. code-block:: ruby

  nagios['debug_level'] = 0


nagios['debug_verbosity']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  nagios['debug_verbosity'] = 1


nagios['default_host']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"check_interval"=>15,
    "retry_interval"=>15,
    "max_check_attempts"=>1,
    "notification_interval"=>300}


*Example*:

.. code-block:: ruby

  nagios['default_host'] = {"check_interval"=>15,
    "retry_interval"=>15,
    "max_check_attempts"=>1,
    "notification_interval"=>300}

nagios['default_service']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"check_interval"=>60,
 "retry_interval"=>15,
 "max_check_attempts"=>3,
 "notification_interval"=>1200}


*Example*:

.. code-block:: ruby

  nagios['default_service'] = {"check_interval"=>60,
 "retry_interval"=>15,
 "max_check_attempts"=>3,
 "notification_interval"=>1200}


nagios['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nagios"

*Example*:

.. code-block:: ruby

  nagios['dir'] = "/var/opt/opscode/nagios"


nagios['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nagios['enable'] = true


nagios['fcgiwrap_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/fcgiwrap"

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_log_directory'] = "/var/log/opscode/fcgiwrap"


nagios['fcgiwrap_svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_svlogd_size'] = 1000000


nagios['fcgiwrap_svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_svlogd_num'] = 10


nagios['fcgiwrap_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9670

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_port'] = 9670


nagios['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  nagios['ha'] = false


nagios['hosts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}


*Example*:

.. code-block:: ruby

  nagios['hosts'] = {"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}



nagios['interval_length']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  nagios['interval_length'] = 1


nagios['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nagios"

*Example*:

.. code-block:: ruby

  nagios['log_directory'] = "/var/log/opscode/nagios"


nagios['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  nagios['svlogd_size'] = 1000000


nagios['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  nagios['svlogd_num'] = 10


nagios['php_fpm_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/php-fpm"

*Example*:

.. code-block:: ruby

  nagios['php_fpm_log_directory'] = "/var/log/opscode/php-fpm"


nagios['php_fpm_svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  nagios['php_fpm_svlogd_size'] = 1000000


nagios['php_fpm_svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  nagios['php_fpm_svlogd_num'] = 10


nagios['php_fpm_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9000

*Example*:

.. code-block:: ruby

  nagios['php_fpm_port'] = 9000


nagios['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9671

*Example*:

.. code-block:: ruby

  nagios['port'] = 9671


nginx['cache_max_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5000m"

*Example*:

.. code-block:: ruby

  nginx['cache_max_size'] = "5000m"


nginx['client_max_body_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "250m"

*Example*:

.. code-block:: ruby

  nginx['client_max_body_size'] = "250m"


nginx['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nginx"

*Example*:

.. code-block:: ruby

  nginx['dir'] = "/var/opt/opscode/nginx"


nginx['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nginx['enable'] = true


nginx['gzip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['gzip'] = "on"



nginx['gzip_comp_level']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "2"

*Example*:

.. code-block:: ruby

  nginx['gzip_comp_level'] = "2"



nginx['gzip_http_version']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "1.0"

*Example*:

.. code-block:: ruby

  nginx['gzip_http_version'] = "1.0"


nginx['gzip_proxied']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "any"

*Example*:

.. code-block:: ruby

  nginx['gzip_proxied'] = "any"



nginx['gzip_types']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ["text/plain",
 "text/css",
 "application/x-javascript",
 "text/xml",
 "application/xml",
 "application/xml+rss",
 "text/javascript"]


*Example*:

.. code-block:: ruby

  nginx['gzip_types'] = ["text/plain",
 "text/css",
 "application/x-javascript",
 "text/xml",
 "application/xml",
 "application/xml+rss",
 "text/javascript"]




nginx['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  nginx['ha'] = false



nginx['keepalive_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  65

*Example*:

.. code-block:: ruby

  nginx['keepalive_timeout'] = 65



nginx['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nginx"

*Example*:

.. code-block:: ruby

  nginx['log_directory'] = "/var/log/opscode/nginx"



nginx['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  nginx['svlogd_size'] = 1000000



nginx['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  nginx['svlogd_num'] = 10



nginx['sendfile']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['sendfile'] = "on"



nginx['server_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  nginx['server_name'] = "ubuntu.localdomain"



nginx['ssl_certificate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  nginx['ssl_certificate'] = nil


nginx['ssl_certificate_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  nginx['ssl_certificate_key'] = nil



nginx['ssl_ciphers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

*Example*:

.. code-block:: ruby

  nginx['ssl_ciphers'] = "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"



nginx['ssl_company_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "YouCorp"

*Example*:

.. code-block:: ruby

  nginx['ssl_company_name'] = "YouCorp"



nginx['ssl_country_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "US"

*Example*:

.. code-block:: ruby

  nginx['ssl_country_name'] = "US"



nginx['ssl_email_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "you@example.com"

*Example*:

.. code-block:: ruby

  nginx['ssl_email_address'] = "you@example.com"



nginx['ssl_locality_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "Seattle"

*Example*:

.. code-block:: ruby

  nginx['ssl_locality_name'] = "Seattle"



nginx['ssl_organizational_unit_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "Operations"

*Example*:

.. code-block:: ruby

  nginx['ssl_organizational_unit_name'] = "Operations"



nginx['enable_non_ssl']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Set this value to true in order to disable the port 80 redirect to 443
and allow for a front end hardware load balancer to do SSL termination
of the WebUI and API front end.

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  nginx['enable_non_ssl'] = true



nginx['non_ssl_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

This value can be used to change the port that the WebUI and API bind
to for non_ssl connections.  Setting this value to nil will disable
this port entirely.  To just enable or disable the redirect to SSL on
this port see the nginx['enable_non_ssl'] parameter.

*Default Value*:

.. code-block:: ruby

  80

*Example*:

.. code-block:: ruby

  nginx['non_ssl_port'] = 80



nginx['ssl_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  443

*Example*:

.. code-block:: ruby

  nginx['ssl_port'] = 443



nginx['ssl_protocols']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "SSLv3 TLSv1"

*Example*:

.. code-block:: ruby

  nginx['ssl_protocols'] = "SSLv3 TLSv1"



nginx['ssl_state_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "WA"

*Example*:

.. code-block:: ruby

  nginx['ssl_state_name'] = "WA"



nginx['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['tcp_nodelay'] = "on"



nginx['tcp_nopush']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['tcp_nopush'] = "on"



nginx['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "https://ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  nginx['url'] = "https://ubuntu.localdomain"



nginx['worker_connections']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  10240

*Example*:

.. code-block:: ruby

  nginx['worker_connections'] = 10240



nginx['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  nginx['worker_processes'] = 4



nginx['x_forwarded_proto']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

This value can be used to set the protocol (HTTP or HTTPS) of URLs
returned within API responses. It should be set to the protocol used
to connect to the Private Chef API by your clients.

*Default Value*:

.. code-block:: ruby

  "https"

*Example*:
.. code-block:: ruby

  nginx['x_forwarded_protocol'] = "http"



nrpe['allowed_hosts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ["127.0.0.1", "192.168.4.131"]


*Example*:

.. code-block:: ruby

  nrpe['allowed_hosts'] = ["127.0.0.1", "192.168.4.131"]



nrpe['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nrpe"

*Example*:

.. code-block:: ruby

  nrpe['dir'] = "/var/opt/opscode/nrpe"



nrpe['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nrpe['enable'] = true


nrpe['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "192.168.4.131"

*Example*:

.. code-block:: ruby

  nrpe['listen'] = "192.168.4.131"


nrpe['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nrpe"

*Example*:

.. code-block:: ruby

  nrpe['log_directory'] = "/var/log/opscode/nrpe"



nrpe['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  nrpe['svlogd_size'] = 1000000



nrpe['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  nrpe['svlogd_num'] = 10



nrpe['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9672

*Example*:

.. code-block:: ruby

  nrpe['port'] = 9672


opscode_account['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_account['backlog'] = 1024


opscode_account['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-account"

*Example*:

.. code-block:: ruby

  opscode_account['dir'] = "/var/opt/opscode/opscode-account"



opscode_account['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_account['enable'] = true



opscode_account['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_account['environment'] = "privatechef"



opscode_account['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_account['ha'] = false



opscode_account['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9465"

*Example*:

.. code-block:: ruby

  opscode_account['listen'] = "127.0.0.1:9465"



opscode_account['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-account"

*Example*:

.. code-block:: ruby

  opscode_account['log_directory'] = "/var/log/opscode/opscode-account"



opscode_account['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_account['svlogd_size'] = 1000000



opscode_account['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_account['svlogd_num'] = 10



opscode_account['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9465

*Example*:

.. code-block:: ruby

  opscode_account['port'] = 9465



opscode_account['proxy_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "pivotal"

*Example*:

.. code-block:: ruby

  opscode_account['proxy_user'] = "pivotal"



opscode_account['session_secret_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "change-by-default"

*Example*:

.. code-block:: ruby

  opscode_account['session_secret_key'] = "change-by-default"



opscode_account['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_account['tcp_nodelay'] = true


opscode_account['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_account['umask'] = "0022"



opscode_account['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9465"

*Example*:

.. code-block:: ruby

  opscode_account['url'] = "http://127.0.0.1:9465"



opscode_account['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_account['validation_client_name'] = "chef"



opscode_account['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_account['vip'] = "127.0.0.1"



opscode_account['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_account['worker_processes'] = 4



opscode_account['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_account['worker_timeout'] = 3600



opscode_authz['caching']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "enabled"

*Example*:

.. code-block:: ruby

  opscode_authz['caching'] = "enabled"



opscode_authz['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-authz"

*Example*:

.. code-block:: ruby

  opscode_authz['dir'] = "/var/opt/opscode/opscode-authz"



opscode_authz['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_authz['enable'] = true



opscode_authz['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_authz['ha'] = false



opscode_authz['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-authz"

*Example*:

.. code-block:: ruby

  opscode_authz['log_directory'] = "/var/log/opscode/opscode-authz"



opscode_authz['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_authz['svlogd_size'] = 1000000



opscode_authz['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_authz['svlogd_num'] = 10



opscode_authz['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9463

*Example*:

.. code-block:: ruby

  opscode_authz['port'] = 9463



opscode_authz['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_authz['vip'] = "127.0.0.1"



opscode_certificate['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-certificate"

*Example*:

.. code-block:: ruby

  opscode_certificate['dir'] = "/var/opt/opscode/opscode-certificate"



opscode_certificate['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_certificate['enable'] = true



opscode_certificate['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_certificate['ha'] = false



opscode_certificate['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-certificate"

*Example*:

.. code-block:: ruby

  opscode_certificate['log_directory'] = "/var/log/opscode/opscode-certificate"



opscode_certificate['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_certificate['svlogd_size'] = 1000000



opscode_certificate['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_certificate['svlogd_num'] = 10



opscode_certificate['num_certificates_per_worker']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "50"

*Example*:

.. code-block:: ruby

  opscode_certificate['num_certificates_per_worker'] = "50"



opscode_certificate['num_workers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "2"

*Example*:

.. code-block:: ruby

  opscode_certificate['num_workers'] = "2"



opscode_certificate['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  5140

*Example*:

.. code-block:: ruby

  opscode_certificate['port'] = 5140



opscode_certificate['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_certificate['vip'] = "127.0.0.1"



opscode_chef['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_chef['backlog'] = 1024



opscode_chef['checksum_path']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef/checksum"

*Example*:

.. code-block:: ruby

  opscode_chef['checksum_path'] = "/var/opt/opscode/opscode-chef/checksum"



opscode_chef['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef"

*Example*:

.. code-block:: ruby

  opscode_chef['dir'] = "/var/opt/opscode/opscode-chef"



opscode_chef['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_chef['enable'] = true



opscode_chef['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_chef['environment'] = "privatechef"



opscode_chef['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_chef['ha'] = false



opscode_chef['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9460"

*Example*:

.. code-block:: ruby

  opscode_chef['listen'] = "127.0.0.1:9460"



opscode_chef['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-chef"

*Example*:

.. code-block:: ruby

  opscode_chef['log_directory'] = "/var/log/opscode/opscode-chef"



opscode_chef['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_chef['svlogd_size'] = 1000000



opscode_chef['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_chef['svlogd_num'] = 10


opscode_chef['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['port'] = 9460



opscode_chef['proxy_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "pivotal"

*Example*:

.. code-block:: ruby

  opscode_chef['proxy_user'] = "pivotal"



opscode_chef['sandbox_path']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef/sandbox"

*Example*:

.. code-block:: ruby

  opscode_chef['sandbox_path'] = "/var/opt/opscode/opscode-chef/sandbox"



opscode_chef['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_chef['tcp_nodelay'] = true



opscode_chef['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_chef['umask'] = "0022"



opscode_chef['upload_internal_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_port'] = 9460



opscode_chef['upload_internal_proto']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_proto'] = "http"



opscode_chef['upload_internal_vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_vip'] = "127.0.0.1"



opscode_chef['upload_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['upload_port'] = 9460



opscode_chef['upload_proto']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_proto'] = "http"



opscode_chef['upload_vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_vip'] = "127.0.0.1"



opscode_chef['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9460"

*Example*:

.. code-block:: ruby

  opscode_chef['url'] = "http://127.0.0.1:9460"



opscode_chef['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_chef['validation_client_name'] = "chef"



opscode_chef['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['vip'] = "127.0.0.1"



opscode_chef['web_ui_admin_default_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "p@ssw0rd1"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_admin_default_password'] = "p@ssw0rd1"



opscode_chef['web_ui_admin_user_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "admin"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_admin_user_name'] = "admin"



opscode_chef['web_ui_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef-webui"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_client_name'] = "chef-webui"



opscode_chef['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_chef['worker_processes'] = 4



opscode_chef['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_chef['worker_timeout'] = 3600



opscode_erchef['auth_skew']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "900"

*Example*:

.. code-block:: ruby

  opscode_erchef['auth_skew'] = "900"



opscode_erchef['bulk_fetch_batch_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5"

*Example*:

.. code-block:: ruby

  opscode_erchef['bulk_fetch_batch_size'] = "5"



opscode_erchef['cache_ttl']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "3600"

*Example*:

.. code-block:: ruby

  opscode_erchef['cache_ttl'] = "3600"



opscode_erchef['couchdb_max_conn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "100"

*Example*:

.. code-block:: ruby

  opscode_erchef['couchdb_max_conn'] = "100"



opscode_erchef['db_pool_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "20"

*Example*:

.. code-block:: ruby

  opscode_erchef['db_pool_size'] = "20"



opscode_erchef['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-erchef"

*Example*:

.. code-block:: ruby

  opscode_erchef['dir'] = "/var/opt/opscode/opscode-erchef"



opscode_erchef['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_erchef['enable'] = true



opscode_erchef['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_erchef['ha'] = false



opscode_erchef['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_erchef['listen'] = "127.0.0.1"



opscode_erchef['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-erchef"

*Example*:

.. code-block:: ruby

  opscode_erchef['log_directory'] = "/var/log/opscode/opscode-erchef"



opscode_erchef['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_erchef['svlogd_size'] = 1000000


opscode_erchef['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_erchef['svlogd_num'] = 10



opscode_erchef['max_cache_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "10000"

*Example*:

.. code-block:: ruby

  opscode_erchef['max_cache_size'] = "10000"



opscode_erchef['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  8000

*Example*:

.. code-block:: ruby

  opscode_erchef['port'] = 8000



opscode_erchef['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_erchef['vip'] = "127.0.0.1"



opscode_expander['consumer_id']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "default"

*Example*:

.. code-block:: ruby

  opscode_expander['consumer_id'] = "default"



opscode_expander['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-expander"

*Example*:

.. code-block:: ruby

  opscode_expander['dir'] = "/var/opt/opscode/opscode-expander"



opscode_expander['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_expander['enable'] = true


opscode_expander['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_expander['ha'] = false



opscode_expander['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-expander"

*Example*:

.. code-block:: ruby

  opscode_expander['log_directory'] = "/var/log/opscode/opscode-expander"



opscode_expander['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_expander['svlogd_size'] = 1000000


opscode_expander['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_expander['svlogd_num'] = 10


opscode_expander['nodes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  2

*Example*:

.. code-block:: ruby

  opscode_expander['nodes'] = 2



opscode_expander['reindexer_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-expander-reindexer"

*Example*:

.. code-block:: ruby

  opscode_expander['reindexer_log_directory'] = "/var/log/opscode/opscode-expander-reindexer"



opscode_expander['reindexer_svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_expander['reindexer_svlogd_size'] = 1000000



opscode_expander['redindexer_svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_expander['reindexer_svlogd_num'] = 10



opscode_org_creator['create_splay_ms']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  25000

*Example*:

.. code-block:: ruby

  opscode_org_creator['create_splay_ms'] = 25000



opscode_org_creator['create_wait_ms']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  30000

*Example*:

.. code-block:: ruby

  opscode_org_creator['create_wait_ms'] = 30000



opscode_org_creator['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-org-creator"

*Example*:

.. code-block:: ruby

  opscode_org_creator['dir'] = "/var/opt/opscode/opscode-org-creator"



opscode_org_creator['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_org_creator['enable'] = true



opscode_org_creator['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_org_creator['ha'] = false



opscode_org_creator['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-org-creator"

*Example*:

.. code-block:: ruby

  opscode_org_creator['log_directory'] = "/var/log/opscode/opscode-org-creator"



opscode_org_creator['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_org_creator['svlogd_size'] = 1000000



opscode_org_creator['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_org_creator['svlogd_num'] = 10



opscode_org_creator['max_workers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  opscode_org_creator['max_workers'] = 1



opscode_org_creator['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4369

*Example*:

.. code-block:: ruby

  opscode_org_creator['port'] = 4369



opscode_org_creator['ready_org_depth']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_org_creator['ready_org_depth'] = 10



opscode_solr['commit_interval']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  60000

*Example*:

.. code-block:: ruby

  opscode_solr['commit_interval'] = 60000



opscode_solr['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-solr/data"

*Example*:

.. code-block:: ruby

  opscode_solr['data_dir'] = "/var/opt/opscode/opscode-solr/data"



opscode_solr['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-solr"

*Example*:

.. code-block:: ruby

  opscode_solr['dir'] = "/var/opt/opscode/opscode-solr"



opscode_solr['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_solr['enable'] = true



opscode_solr['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_solr['ha'] = false



opscode_solr['heap_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "256M"

*Example*:

.. code-block:: ruby

  opscode_solr['heap_size'] = "256M"



opscode_solr['ip_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_solr['ip_address'] = "127.0.0.1"



opscode_solr['java_opts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ""

*Example*:

.. code-block:: ruby

  opscode_solr['java_opts'] = ""



opscode_solr['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-solr"

*Example*:

.. code-block:: ruby

  opscode_solr['log_directory'] = "/var/log/opscode/opscode-solr"



opscode_solr['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_solr['svlogd_size'] = 1000000


opscode_solr['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_solr['svlogd_num'] = 10



opscode_solr['max_commit_docs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1000

*Example*:

.. code-block:: ruby

  opscode_solr['max_commit_docs'] = 1000



opscode_solr['max_field_length']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  100000

*Example*:

.. code-block:: ruby

  opscode_solr['max_field_length'] = 100000



opscode_solr['max_merge_docs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  2147483647

*Example*:

.. code-block:: ruby

  opscode_solr['max_merge_docs'] = 2147483647



opscode_solr['merge_factor']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  100

*Example*:

.. code-block:: ruby

  opscode_solr['merge_factor'] = 100



opscode_solr['poll_seconds']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  20

*Example*:

.. code-block:: ruby

  opscode_solr['poll_seconds'] = 20



opscode_solr['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  8983

*Example*:

.. code-block:: ruby

  opscode_solr['port'] = 8983



opscode_solr['ram_buffer_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  200

*Example*:

.. code-block:: ruby

  opscode_solr['ram_buffer_size'] = 200



opscode_solr['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://localhost:8983"

*Example*:

.. code-block:: ruby

  opscode_solr['url'] = "http://localhost:8983"



opscode_solr['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_solr['vip'] = "127.0.0.1"



opscode_webui['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_webui['backlog'] = 1024



opscode_webui['cookie_domain']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "all"

*Example*:

.. code-block:: ruby

  opscode_webui['cookie_domain'] = "all"



opscode_webui['cookie_secret']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "47b3b8d95dea455baf32155e95d1e64e"

*Example*:

.. code-block:: ruby

  opscode_webui['cookie_secret'] = "47b3b8d95dea455baf32155e95d1e64e"



opscode_webui['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-webui"

*Example*:

.. code-block:: ruby

  opscode_webui['dir'] = "/var/opt/opscode/opscode-webui"



opscode_webui['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_webui['enable'] = true



opscode_webui['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_webui['environment'] = "privatechef"



opscode_webui['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_webui['ha'] = false



opscode_webui['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9462"

*Example*:

.. code-block:: ruby

  opscode_webui['listen'] = "127.0.0.1:9462"



opscode_webui['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-webui"

*Example*:

.. code-block:: ruby

  opscode_webui['log_directory'] = "/var/log/opscode/opscode-webui"



opscode_webui['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  opscode_webui['svlogd_size'] = 1000000


opscode_webui['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_webui['svlogd_num'] = 10



opscode_webui['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9462

*Example*:

.. code-block:: ruby

  opscode_webui['port'] = 9462



opscode_webui['session_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "_sandbox_session"

*Example*:

.. code-block:: ruby

  opscode_webui['session_key'] = "_sandbox_session"



opscode_webui['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_webui['tcp_nodelay'] = true



opscode_webui['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_webui['umask'] = "0022"



opscode_webui['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9462"

*Example*:

.. code-block:: ruby

  opscode_webui['url'] = "http://127.0.0.1:9462"



opscode_webui['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_webui['validation_client_name'] = "chef"



opscode_webui['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_webui['vip'] = "127.0.0.1"



opscode_webui['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_webui['worker_processes'] = 4



opscode_webui['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_webui['worker_timeout'] = 3600



postgresql['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/postgresql/data"

*Example*:

.. code-block:: ruby

  postgresql['data_dir'] = "/var/opt/opscode/postgresql/data"



postgresql['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/postgresql"

*Example*:

.. code-block:: ruby

  postgresql['dir'] = "/var/opt/opscode/postgresql"



postgresql['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  postgresql['enable'] = true



postgresql['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  postgresql['ha'] = false



postgresql['home']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/opt/opscode/embedded"

*Example*:

.. code-block:: ruby

  postgresql['home'] = "/opt/opscode/embedded"



postgresql['listen_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "localhost"

*Example*:

.. code-block:: ruby

  postgresql['listen_address'] = "localhost"



postgresql['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/postgresql"

*Example*:

.. code-block:: ruby

  postgresql['log_directory'] = "/var/log/opscode/postgresql"



postgresql['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  postgresql['svlogd_size'] = 1000000



postgresql['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  postgresql['svlogd_num'] = 10



postgresql['max_connections']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  200

*Example*:

.. code-block:: ruby

  postgresql['max_connections'] = 200



postgresql['md5_auth_cidr_addresses']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  []


*Example*:

.. code-block:: ruby

  postgresql['md5_auth_cidr_addresses'] = []




postgresql['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  5432

*Example*:

.. code-block:: ruby

  postgresql['port'] = 5432



postgresql['shell']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/bin/sh"

*Example*:

.. code-block:: ruby

  postgresql['shell'] = "/bin/sh"



postgresql['shmall']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4194304

*Example*:

.. code-block:: ruby

  postgresql['shmall'] = 4194304



postgresql['shmmax']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  17179869184

*Example*:

.. code-block:: ruby

  postgresql['shmmax'] = 17179869184



postgresql['sql_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "snakepliskin"

*Example*:

.. code-block:: ruby

  postgresql['sql_password'] = "snakepliskin"



postgresql['sql_ro_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "shmunzeltazzen"

*Example*:

.. code-block:: ruby

  postgresql['sql_ro_password'] = "shmunzeltazzen"



postgresql['sql_ro_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef_ro"

*Example*:

.. code-block:: ruby

  postgresql['sql_ro_user'] = "opscode_chef_ro"



postgresql['sql_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef"

*Example*:

.. code-block:: ruby

  postgresql['sql_user'] = "opscode_chef"



postgresql['trust_auth_cidr_addresses']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ["127.0.0.1/32", "::1/128"]


*Example*:

.. code-block:: ruby

  postgresql['trust_auth_cidr_addresses'] = ["127.0.0.1/32", "::1/128"]




postgresql['username']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode-pgsql"

*Example*:

.. code-block:: ruby

  postgresql['username'] = "opscode-pgsql"



postgresql['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  postgresql['vip'] = "127.0.0.1"



rabbitmq['consumer_id']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "hotsauce"

*Example*:

.. code-block:: ruby

  rabbitmq['consumer_id'] = "hotsauce"



rabbitmq['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/rabbitmq/db"

*Example*:

.. code-block:: ruby

  rabbitmq['data_dir'] = "/var/opt/opscode/rabbitmq/db"



rabbitmq['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/rabbitmq"

*Example*:

.. code-block:: ruby

  rabbitmq['dir'] = "/var/opt/opscode/rabbitmq"



rabbitmq['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  rabbitmq['enable'] = true



rabbitmq['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  rabbitmq['ha'] = false


rabbitmq['jobs_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "workcomplete"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_password'] = "workcomplete"



rabbitmq['jobs_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "jobs"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_user'] = "jobs"



rabbitmq['jobs_vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/jobs"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_vhost'] = "/jobs"



rabbitmq['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/rabbitmq"

*Example*:

.. code-block:: ruby

  rabbitmq['log_directory'] = "/var/log/opscode/rabbitmq"



rabbitmq['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  rabbitmq['svlogd_size'] = 1000000



rabbitmq['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  rabbitmq['svlogd_num'] = 10



rabbitmq['node_ip_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  rabbitmq['node_ip_address'] = "127.0.0.1"



rabbitmq['node_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5672"

*Example*:

.. code-block:: ruby

  rabbitmq['node_port'] = "5672"



rabbitmq['nodename']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "rabbit@localhost"

*Example*:

.. code-block:: ruby

  rabbitmq['nodename'] = "rabbit@localhost"



rabbitmq['password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chefrocks"

*Example*:

.. code-block:: ruby

  rabbitmq['password'] = "chefrocks"



rabbitmq['reindexer_vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/reindexer"

*Example*:

.. code-block:: ruby

  rabbitmq['reindexer_vhost'] = "/reindexer"


rabbitmq['user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  rabbitmq['user'] = "chef"



rabbitmq['vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/chef"

*Example*:

.. code-block:: ruby

  rabbitmq['vhost'] = "/chef"


rabbitmq['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  rabbitmq['vip'] = "127.0.0.1"



redis['appendfsync']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "everysec"

*Example*:

.. code-block:: ruby

  redis['appendfsync'] = "everysec"



redis['appendonly']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "no"

*Example*:

.. code-block:: ruby

  redis['appendonly'] = "no"



redis['bind']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  redis['bind'] = "127.0.0.1"



redis['databases']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "16"

*Example*:

.. code-block:: ruby

  redis['databases'] = "16"


redis['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['dir'] = "/var/opt/opscode/redis"



redis['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  redis['enable'] = true



redis['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  redis['ha'] = false



redis['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['log_directory'] = "/var/log/opscode/redis"



redis['svlogd_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a rotation policy based on the
size, in bytes, of the logfile.

*Default Value*:

.. code-block:: ruby

  1000000

*Example*:

.. code-block:: ruby

  redis['svlogd_size'] = 1000000



redis['svlogd_num']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For the svlogd-managed 'current' log set a retention policy based on the
number of logfiles retained.

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  redis['svlogd_num'] = 10



redis['loglevel']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "notice"

*Example*:

.. code-block:: ruby

  redis['loglevel'] = "notice"



redis['maxmemory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "1g"

*Example*:

.. code-block:: ruby

  redis['maxmemory'] = "1g"



redis['maxmemory_policy']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "volatile-lru"

*Example*:

.. code-block:: ruby

  redis['maxmemory_policy'] = "volatile-lru"



redis['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "6379"

*Example*:

.. code-block:: ruby

  redis['port'] = "6379"



redis['root']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['root'] = "/var/opt/opscode/redis"



redis['timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "300"

*Example*:

.. code-block:: ruby

  redis['timeout'] = "300"



redis['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  redis['vip'] = "127.0.0.1"



redis['vm']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"enabled"=>"no",
 "max_memory"=>"0",
 "page_size"=>"32",
 "pages"=>"134217728",
 "max_threads"=>"4"}


*Example*:

.. code-block:: ruby

  redis['vm'] = {"enabled"=>"no",
 "max_memory"=>"0",
 "page_size"=>"32",
 "pages"=>"134217728",
 "max_threads"=>"4"}



user['home']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/opt/opscode/embedded"

*Example*:

.. code-block:: ruby

  user['home'] = "/opt/opscode/embedded"



user['shell']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/bin/sh"

*Example*:

.. code-block:: ruby

  user['shell'] = "/bin/sh"



user['username']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode"

*Example*:

.. code-block:: ruby

  user['username'] = "opscode"



log_rotation
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuring log rotation on files that are not managed by svlogd or 
rotated by the application itself.

*Default Value*:

.. code-block:: ruby

  {
    "/var/log/opscode/nginx/*.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/php-fpm/php-fpm.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/couchdb/couchdb.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/nagios/nagios.log" => {
      "rotate" => 14
    },
  }

*Example*:

.. code-block:: ruby

  log_rotation = {
    "/var/log/opscode/nginx/*.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/php-fpm/php-fpm.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/couchdb/couchdb.log" => {
      "rotate" => 14
    },
    "/var/log/opscode/nagios/nagios.log" => {
      "rotate" => 14
    },
  }



log_retention['couchdb']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/couchdb directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['couchdb'] = 14



log_retention['postgresql']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/postgresql directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['postgresql'] = 14



log_retention['rabbitmq']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/rabbitmq directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['rabbitmq'] = 14



log_retention['redis']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/redis directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['redis'] = 14



log_retention['opscode-authz']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-authz directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-authz'] = 14



log_retention['opscode-certificate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-certificate directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-certificate'] = 14



log_retention['opscode-account']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-account directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-account'] = 14



log_retention['opscode-solr']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-solr directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-solr'] = 14



log_retention['opscode-expander']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-expander directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-expander'] = 14



log_retention['opscode-org-creator']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-org-creator directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-org-creator'] = 14



log_retention['opscode-chef']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-chef directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-chef'] = 14



log_retention['opscode-erchef']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-erchef directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-erchef'] = 14


log_retention['opscode-webui']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/opscode-webui directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['opscode-webui'] = 14


log_retention['nagios']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/nagios directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['nagios'] = 14


log_retention['nginx']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

For configuration file retention times on the /var/log/opscode/nginx directory.

And files with mtimes older than this number of days will be deleted.

*Default Value*:

.. code-block:: ruby

  14

*Example*:

.. code-block:: ruby

  log_retention['nginx'] = 14


