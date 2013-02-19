=====================================================
Private Chef 1.4.4 Administration
=====================================================

.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin.rst


Configure Private Chef
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure.rst

Apply Configuration Changes
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_apply_changes.rst

Common Options
-----------------------------------------------------
The following options are common for the |chef private| server.

topology
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_topology.rst

notification_email
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_notification_email.rst

from_email
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_from_email.rst

server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_server.rst

api_fqdn
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_api_fqdn.rst

backend_vip
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_configure_common_backend_vip.rst

General Options
-----------------------------------------------------
While the vast majority of common configurations are achieved with only the
common options listed above, Private Chef provides many possible configuration
options. This section lists them all - you likely only want to change them
in consultation with your Opscode Solutions Engineer's oversight.

General Options
---------------



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

.. index::
  triple: configuration; couchdb; batch_save_interval

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

.. index::
  triple: configuration; couchdb; batch_save_size

couchdb['batch_save_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The number of documents that will trigger a batch save.

*Default Value*:

.. code-block:: ruby

  1000

*Example*:

.. code-block:: ruby

  couchdb['batch_save_size'] = 1000

.. index::
  triple: configuration; couchdb; bind_address

couchdb['bind_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The address that CouchDB will bind to.

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  couchdb['bind_address'] = "127.0.0.1"

.. index::
  triple: configuration; couchdb; data_dir

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

.. index::
  triple: configuration; couchdb; delayed_commits

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

.. index::
  triple: configuration; couchdb; dir

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

.. index::
  triple: configuration; couchdb; enable

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

.. index::
  triple: configuration; couchdb; ha

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

.. index::
  triple: configuration; couchdb; log_directory

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

.. index::
  triple: configuration; couchdb; svlogd_size

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

.. index::
  triple: configuration; couchdb; svlogd_num

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

.. index::
  triple: configuration; couchdb; log_level

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

.. index::
  triple: configuration; couchdb; max_attachment_chunk_size

couchdb['max_attachment_chunk_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum attachment size.

*Default Value*:

.. code-block:: ruby

  "4294967296"

*Example*:

.. code-block:: ruby

  couchdb['max_attachment_chunk_size'] = "4294967296"

.. index::
  triple: configuration; couchdb; max_dbs_open

couchdb['max_dbs_open']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum number of open databases.

*Default Value*:

.. code-block:: ruby

  10000

*Example*:

.. code-block:: ruby

  couchdb['max_dbs_open'] = 10000

.. index::
  triple: configuration; couchdb; max_document_size

couchdb['max_document_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The maximum size of a document.

*Default Value*:

.. code-block:: ruby

  "4294967296"

*Example*:

.. code-block:: ruby

  couchdb['max_document_size'] = "4294967296"

.. index::
  triple: configuration; couchdb; os_process_timeout

couchdb['os_process_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

How long before timing out external processes, in milliseconds.

*Default Value*:

.. code-block:: ruby

  "300000"

*Example*:

.. code-block:: ruby

  couchdb['os_process_timeout'] = "300000"

.. index::
  triple: configuration; couchdb; port

couchdb['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The port CouchDB will listen on.

*Default Value*:

.. code-block:: ruby

  5984

*Example*:

.. code-block:: ruby

  couchdb['port'] = 5984

.. index::
  triple: configuration; couchdb; reduce_limit

couchdb['reduce_limit']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Disable limiting the number of reduces.

*Default Value*:

.. code-block:: ruby

  "false"

*Example*:

.. code-block:: ruby

  couchdb['reduce_limit'] = "false"

.. index::
  triple: configuration; couchdb; vip

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

.. index::
  triple: configuration; dark_launch; new_theme

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

.. index::
  triple: configuration; drbd; data_dir

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

.. index::
  triple: configuration; drbd; device

drbd['device']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The device name to use for DRBD.

*Default Value*:

.. code-block:: ruby

  "/dev/drbd0"

*Example*:

.. code-block:: ruby

  drbd['device'] = "/dev/drbd0"

.. index::
  triple: configuration; drbd; dir

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

.. index::
  triple: configuration; drbd; disk

drbd['disk']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The local LVM logical volume to use behind DRBD.

*Default Value*:

.. code-block:: ruby

  "/dev/opscode/drbd"

*Example*:

.. code-block:: ruby

  drbd['disk'] = "/dev/opscode/drbd"

.. index::
  triple: configuration; drbd; enable

drbd['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Whether or not this server is using DRBD. This is typically set by the ``role`` this server plays - it is enabled on ``backend`` servers in the ``ha`` ``topology``.

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  drbd['enable'] = false

.. index::
  triple: configuration; drbd; flexible_meta_disk

drbd['flexible_meta_disk']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Where DRBD meta-data is stored.

*Default Value*:

.. code-block:: ruby

  "internal"

*Example*:

.. code-block:: ruby

  drbd['flexible_meta_disk'] = "internal"

.. index::
  triple: configuration; drbd; primary

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


.. index::
  triple: configuration; drbd; secondary

drbd['secondary']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Identical to the ``drbd['primary']`` setting, including caveats.

*Default Value*:

.. code-block:: ruby

  {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}


*Example*:

.. code-block:: ruby

  drbd['secondary'] = {"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}


.. index::
  triple: configuration; drbd; shared_secret

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

.. index::
  triple: configuration; drbd; sync_rate

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

.. index::
  triple: configuration; drbd; version

drbd['version']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The version of DRBD installed on the system. Auto-detected.

*Default Value*:

.. code-block:: ruby

  "8.4.1"

*Example*:

.. code-block:: ruby

  drbd['version'] = "8.4.1"

.. index::
  triple: configuration; keepalived; dir

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

.. index::
  triple: configuration; keepalived; enable

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

.. index::
  triple: configuration; keepalived; log_directory

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

.. index::
  triple: configuration; keepalived; svlogd_size

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

.. index::
  triple: configuration; keepalived; svlogd_num

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

.. index::
  triple: configuration; keepalived; service_order

keepalived['service_order']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The order that keepalived will start and stop services in on transition from
Primary to Backup.

.. warning::

  Changing this order without consulting with your Opscode Support Engineer
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


.. index::
  triple: configuration; keepalived; smtp_connect_timeout

keepalived['smtp_connect_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

When sending messages about transitions, how long to wait to connect with an STMP server.

*Default Value*:

.. code-block:: ruby

  "30"

*Example*:

.. code-block:: ruby

  keepalived['smtp_connect_timeout'] = "30"

.. index::
  triple: configuration; keepalived; smtp_server

keepalived['smtp_server']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The SMTP server to connect to.

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  keepalived['smtp_server'] = "127.0.0.1"

.. index::
  triple: configuration; keepalived; vrrp_instance_advert_int

keepalived['vrrp_instance_advert_int']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

How often should the ``primary`` server advertise, in seconds.

*Default Value*:

.. code-block:: ruby

  "1"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_advert_int'] = "1"

.. index::
  triple: configuration; keepalived; vrrp_instance_interface

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

.. index::
  triple: configuration; keepalived; vrrp_instance_ipaddress

keepalived['vrrp_instance_ipaddress']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The virtual IP address to be managed. Typically set by the ``backend_vip``
option.

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_ipaddress'] = "192.168.4.131"

.. index::
  triple: configuration; keepalived; vrrp_instance_ipaddress_dev

keepalived['vrrp_instance_ipaddress_dev']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The device to add the virtual IP address to.

*Default Value*:

.. code-block:: ruby

  "eth0"

*Example*:

.. code-block:: ruby

  keepalived['vrrp_instance_ipaddress_dev'] = "eth0"

.. index::
  triple: configuration; keepalived; vrrp_instance_password

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

.. index::
  triple: configuration; keepalived; vrrp_instance_priority

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

.. index::
  triple: configuration; keepalived; vrrp_instance_state

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

.. index::
  triple: configuration; keepalived; vrrp_instance_virtual_router_id

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

.. index::
  triple: configuration; keepalived; vrrp_unicast_bind

keepalived['vrrp_unicast_bind']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The unicast cluster IP address used by keepalived to bind to in order
to talk to its peer.  This should be undefined in order to use multicast.

.. warning::

  This will be configured automatically based on settings derived from the
  /etc/opscode/private-chef.rb file.  Changing this order without consulting
  with your Opscode Support Engineer will make it very difficult to
  troubleshoot your ``ha`` cluster.

*Default Value*:

.. code-block:: ruby

  <ip address of cluster IP or eth0>

*Example*:

.. code-block:: ruby

  keepalived['vrrp_unicast_bind'] = nil

.. index::
  triple: configuration; keepalived; vrrp_unicast_peer

keepalived['vrrp_unicast_peer']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The unicast cluster IP address used by keepalived to send to in order
to talk to its peer.  This should be undefined in order to use multicast.

.. warning::

  This will be configured automatically based on settings derived from the
  /etc/opscode/private-chef.rb file.  Changing this order without consulting
  with your Opscode Support Engineer will make it very difficult to
  troubleshoot your ``ha`` cluster.

*Default Value*:

.. code-block:: ruby

  <ip address of peer cluster IP or eth0>

*Example*:

.. code-block:: ruby

  keepalived['vrrp_unicast_peer'] = nil

.. index::
  triple: configuration; lb; api_fqdn


lb['api_fqdn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  lb['api_fqdn'] = "ubuntu.localdomain"

.. index::
  triple: configuration; lb; cache_cookbook_files

lb['cache_cookbook_files']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  lb['cache_cookbook_files'] = false

.. index::
  triple: configuration; lb; debug

lb['debug']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  lb['debug'] = false

.. index::
  triple: configuration; lb; enable

lb['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  lb['enable'] = true

.. index::
  triple: configuration; lb; upstream

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


.. index::
  triple: configuration; lb; vip

lb['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  lb['vip'] = "127.0.0.1"

.. index::
  triple: configuration; lb; web_ui_fqdn

lb['web_ui_fqdn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  lb['web_ui_fqdn'] = "ubuntu.localdomain"

.. index::
  triple: configuration; lb_internal; account_port

lb_internal['account_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9685

*Example*:

.. code-block:: ruby

  lb_internal['account_port'] = 9685

.. index::
  triple: configuration; lb_internal; authz_port

lb_internal['authz_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9683

*Example*:

.. code-block:: ruby

  lb_internal['authz_port'] = 9683

.. index::
  triple: configuration; lb_internal; chef_port

lb_internal['chef_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9680

*Example*:

.. code-block:: ruby

  lb_internal['chef_port'] = 9680

.. index::
  triple: configuration; lb_internal; enable

lb_internal['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  lb_internal['enable'] = true

.. index::
  triple: configuration; lb_internal; vip

lb_internal['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  lb_internal['vip'] = "127.0.0.1"

.. index::
  triple: configuration; mysql; destructive_migrate

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

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

ldap['base_dn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The LDAP root node, the top entry (starting point) in the directory.

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

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

.. index::
  triple: configuration; ldap; external authentication

mysql['destructive_migrate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  mysql['destructive_migrate'] = false

.. index::
  triple: configuration; mysql; enable

mysql['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  mysql['enable'] = false

.. index::
  triple: configuration; mysql; install_libs

mysql['install_libs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  mysql['install_libs'] = true

.. index::
  triple: configuration; mysql; sql_password

mysql['sql_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "snakepliskin"

*Example*:

.. code-block:: ruby

  mysql['sql_password'] = "snakepliskin"

.. index::
  triple: configuration; mysql; sql_user

mysql['sql_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef"

*Example*:

.. code-block:: ruby

  mysql['sql_user'] = "opscode_chef"

.. index::
  triple: configuration; mysql; vip

mysql['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  mysql['vip'] = "127.0.0.1"

.. index::
  triple: configuration; nagios; admin_email

nagios['admin_email']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['admin_email'] = "nobody@example.com"

.. index::
  triple: configuration; nagios; admin_pager

nagios['admin_pager']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['admin_pager'] = "nobody@example.com"

.. index::
  triple: configuration; nagios; admin_password

nagios['admin_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  nagios['admin_password'] = "privatechef"

.. index::
  triple: configuration; nagios; admin_user

nagios['admin_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nagiosadmin"

*Example*:

.. code-block:: ruby

  nagios['admin_user'] = "nagiosadmin"

.. index::
  triple: configuration; nagios; alert_email

nagios['alert_email']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "nobody@example.com"

*Example*:

.. code-block:: ruby

  nagios['alert_email'] = "nobody@example.com"

.. index::
  triple: configuration; nagios; debug_level

nagios['debug_level']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  0

*Example*:

.. code-block:: ruby

  nagios['debug_level'] = 0

.. index::
  triple: configuration; nagios; debug_verbosity

nagios['debug_verbosity']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  nagios['debug_verbosity'] = 1

.. index::
  triple: configuration; nagios; default_host

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


.. index::
  triple: configuration; nagios; default_service

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


.. index::
  triple: configuration; nagios; dir

nagios['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nagios"

*Example*:

.. code-block:: ruby

  nagios['dir'] = "/var/opt/opscode/nagios"

.. index::
  triple: configuration; nagios; enable

nagios['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nagios['enable'] = true

.. index::
  triple: configuration; nagios; fcgiwrap_log_directory

nagios['fcgiwrap_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/fcgiwrap"

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_log_directory'] = "/var/log/opscode/fcgiwrap"

.. index::
  triple: configuration; nagios; fcgiwrap_svlogd_size

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

.. index::
  triple: configuration; nagios; fcgiwrap_svlogd_num

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

.. index::
  triple: configuration; nagios; fcgiwrap_port

nagios['fcgiwrap_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9670

*Example*:

.. code-block:: ruby

  nagios['fcgiwrap_port'] = 9670

.. index::
  triple: configuration; nagios; ha

nagios['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  nagios['ha'] = false

.. index::
  triple: configuration; nagios; hosts

nagios['hosts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  {"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}


*Example*:

.. code-block:: ruby

  nagios['hosts'] = {"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}


.. index::
  triple: configuration; nagios; interval_length

nagios['interval_length']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  nagios['interval_length'] = 1

.. index::
  triple: configuration; nagios; log_directory

nagios['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nagios"

*Example*:

.. code-block:: ruby

  nagios['log_directory'] = "/var/log/opscode/nagios"

.. index::
  triple: configuration; nagios; svlogd_size

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

.. index::
  triple: configuration; nagios; svlogd_num

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

.. index::
  triple: configuration; nagios; php_fpm_log_directory

nagios['php_fpm_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/php-fpm"

*Example*:

.. code-block:: ruby

  nagios['php_fpm_log_directory'] = "/var/log/opscode/php-fpm"

.. index::
  triple: configuration; nagios; php_fpm_svlogd_size

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

.. index::
  triple: configuration; nagios; php_fpm_svlogd_num

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

.. index::
  triple: configuration; nagios; php_fpm_port

nagios['php_fpm_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9000

*Example*:

.. code-block:: ruby

  nagios['php_fpm_port'] = 9000

.. index::
  triple: configuration; nagios; port

nagios['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9671

*Example*:

.. code-block:: ruby

  nagios['port'] = 9671

.. index::
  triple: configuration; nginx; cache_max_size

nginx['cache_max_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5000m"

*Example*:

.. code-block:: ruby

  nginx['cache_max_size'] = "5000m"

.. index::
  triple: configuration; nginx; client_max_body_size

nginx['client_max_body_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "250m"

*Example*:

.. code-block:: ruby

  nginx['client_max_body_size'] = "250m"

.. index::
  triple: configuration; nginx; dir

nginx['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nginx"

*Example*:

.. code-block:: ruby

  nginx['dir'] = "/var/opt/opscode/nginx"

.. index::
  triple: configuration; nginx; enable

nginx['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nginx['enable'] = true

.. index::
  triple: configuration; nginx; gzip

nginx['gzip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['gzip'] = "on"

.. index::
  triple: configuration; nginx; gzip_comp_level

nginx['gzip_comp_level']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "2"

*Example*:

.. code-block:: ruby

  nginx['gzip_comp_level'] = "2"

.. index::
  triple: configuration; nginx; gzip_http_version

nginx['gzip_http_version']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "1.0"

*Example*:

.. code-block:: ruby

  nginx['gzip_http_version'] = "1.0"

.. index::
  triple: configuration; nginx; gzip_proxied

nginx['gzip_proxied']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "any"

*Example*:

.. code-block:: ruby

  nginx['gzip_proxied'] = "any"

.. index::
  triple: configuration; nginx; gzip_types

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


.. index::
  triple: configuration; nginx; ha

nginx['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  nginx['ha'] = false

.. index::
  triple: configuration; nginx; keepalive_timeout

nginx['keepalive_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  65

*Example*:

.. code-block:: ruby

  nginx['keepalive_timeout'] = 65

.. index::
  triple: configuration; nginx; log_directory

nginx['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nginx"

*Example*:

.. code-block:: ruby

  nginx['log_directory'] = "/var/log/opscode/nginx"

.. index::
  triple: configuration; nginx; svlogd_size

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

.. index::
  triple: configuration; nginx; svlogd_num

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

.. index::
  triple: configuration; nginx; sendfile

nginx['sendfile']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['sendfile'] = "on"

.. index::
  triple: configuration; nginx; server_name

nginx['server_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  nginx['server_name'] = "ubuntu.localdomain"

.. index::
  triple: configuration; nginx; ssl_certificate

nginx['ssl_certificate']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  nginx['ssl_certificate'] = nil

.. index::
  triple: configuration; nginx; ssl_certificate_key

nginx['ssl_certificate_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  nil

*Example*:

.. code-block:: ruby

  nginx['ssl_certificate_key'] = nil

.. index::
  triple: configuration; nginx; ssl_ciphers

nginx['ssl_ciphers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

*Example*:

.. code-block:: ruby

  nginx['ssl_ciphers'] = "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

.. index::
  triple: configuration; nginx; ssl_company_name

nginx['ssl_company_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "YouCorp"

*Example*:

.. code-block:: ruby

  nginx['ssl_company_name'] = "YouCorp"

.. index::
  triple: configuration; nginx; ssl_country_name

nginx['ssl_country_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "US"

*Example*:

.. code-block:: ruby

  nginx['ssl_country_name'] = "US"

.. index::
  triple: configuration; nginx; ssl_email_address

nginx['ssl_email_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "you@example.com"

*Example*:

.. code-block:: ruby

  nginx['ssl_email_address'] = "you@example.com"

.. index::
  triple: configuration; nginx; ssl_locality_name

nginx['ssl_locality_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "Seattle"

*Example*:

.. code-block:: ruby

  nginx['ssl_locality_name'] = "Seattle"

.. index::
  triple: configuration; nginx; ssl_organizational_unit_name

nginx['ssl_organizational_unit_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "Operations"

*Example*:

.. code-block:: ruby

  nginx['ssl_organizational_unit_name'] = "Operations"

.. index::
  triple: configuration; nginx; enable_non_ssl

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

.. index::
  triple: configuration; nginx; non_ssl_port

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

.. index::
  triple: configuration; nginx; ssl_port

nginx['ssl_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  443

*Example*:

.. code-block:: ruby

  nginx['ssl_port'] = 443

.. index::
  triple: configuration; nginx; ssl_protocols

nginx['ssl_protocols']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "SSLv3 TLSv1"

*Example*:

.. code-block:: ruby

  nginx['ssl_protocols'] = "SSLv3 TLSv1"

.. index::
  triple: configuration; nginx; ssl_state_name

nginx['ssl_state_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "WA"

*Example*:

.. code-block:: ruby

  nginx['ssl_state_name'] = "WA"

.. index::
  triple: configuration; nginx; tcp_nodelay

nginx['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['tcp_nodelay'] = "on"

.. index::
  triple: configuration; nginx; tcp_nopush

nginx['tcp_nopush']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "on"

*Example*:

.. code-block:: ruby

  nginx['tcp_nopush'] = "on"

.. index::
  triple: configuration; nginx; url

nginx['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "https://ubuntu.localdomain"

*Example*:

.. code-block:: ruby

  nginx['url'] = "https://ubuntu.localdomain"

.. index::
  triple: configuration; nginx; worker_connections

nginx['worker_connections']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  10240

*Example*:

.. code-block:: ruby

  nginx['worker_connections'] = 10240

.. index::
  triple: configuration; nginx; worker_processes

nginx['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  nginx['worker_processes'] = 4

.. index::
  triple: configuration; nginx; x_forwarded_proto

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

.. index::
  triple: configuration; nrpe; allowed_hosts

nrpe['allowed_hosts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ["127.0.0.1", "192.168.4.131"]


*Example*:

.. code-block:: ruby

  nrpe['allowed_hosts'] = ["127.0.0.1", "192.168.4.131"]


.. index::
  triple: configuration; nrpe; dir

nrpe['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/nrpe"

*Example*:

.. code-block:: ruby

  nrpe['dir'] = "/var/opt/opscode/nrpe"

.. index::
  triple: configuration; nrpe; enable

nrpe['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  nrpe['enable'] = true

.. index::
  triple: configuration; nrpe; listen

nrpe['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "192.168.4.131"

*Example*:

.. code-block:: ruby

  nrpe['listen'] = "192.168.4.131"

.. index::
  triple: configuration; nrpe; log_directory

nrpe['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/nrpe"

*Example*:

.. code-block:: ruby

  nrpe['log_directory'] = "/var/log/opscode/nrpe"

.. index::
  triple: configuration; nrpe; svlogd_size

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

.. index::
  triple: configuration; nrpe; svlogd_num

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

.. index::
  triple: configuration; nrpe; port

nrpe['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9672

*Example*:

.. code-block:: ruby

  nrpe['port'] = 9672

.. index::
  triple: configuration; opscode_account; backlog

opscode_account['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_account['backlog'] = 1024

.. index::
  triple: configuration; opscode_account; dir

opscode_account['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-account"

*Example*:

.. code-block:: ruby

  opscode_account['dir'] = "/var/opt/opscode/opscode-account"

.. index::
  triple: configuration; opscode_account; enable

opscode_account['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_account['enable'] = true

.. index::
  triple: configuration; opscode_account; environment

opscode_account['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_account['environment'] = "privatechef"

.. index::
  triple: configuration; opscode_account; ha

opscode_account['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_account['ha'] = false

.. index::
  triple: configuration; opscode_account; listen

opscode_account['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9465"

*Example*:

.. code-block:: ruby

  opscode_account['listen'] = "127.0.0.1:9465"

.. index::
  triple: configuration; opscode_account; log_directory

opscode_account['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-account"

*Example*:

.. code-block:: ruby

  opscode_account['log_directory'] = "/var/log/opscode/opscode-account"

.. index::
  triple: configuration; opscode_account; svlogd_size

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

.. index::
  triple: configuration; opscode_account; svlogd_num

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

.. index::
  triple: configuration; opscode_account; port

opscode_account['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9465

*Example*:

.. code-block:: ruby

  opscode_account['port'] = 9465

.. index::
  triple: configuration; opscode_account; proxy_user

opscode_account['proxy_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "pivotal"

*Example*:

.. code-block:: ruby

  opscode_account['proxy_user'] = "pivotal"

.. index::
  triple: configuration; opscode_account; session_secret_key

opscode_account['session_secret_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "change-by-default"

*Example*:

.. code-block:: ruby

  opscode_account['session_secret_key'] = "change-by-default"

.. index::
  triple: configuration; opscode_account; tcp_nodelay

opscode_account['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_account['tcp_nodelay'] = true

.. index::
  triple: configuration; opscode_account; umask

opscode_account['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_account['umask'] = "0022"

.. index::
  triple: configuration; opscode_account; url

opscode_account['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9465"

*Example*:

.. code-block:: ruby

  opscode_account['url'] = "http://127.0.0.1:9465"

.. index::
  triple: configuration; opscode_account; validation_client_name

opscode_account['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_account['validation_client_name'] = "chef"

.. index::
  triple: configuration; opscode_account; vip

opscode_account['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_account['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_account; worker_processes

opscode_account['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_account['worker_processes'] = 4

.. index::
  triple: configuration; opscode_account; worker_timeout

opscode_account['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_account['worker_timeout'] = 3600

.. index::
  triple: configuration; opscode_authz; caching

opscode_authz['caching']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "enabled"

*Example*:

.. code-block:: ruby

  opscode_authz['caching'] = "enabled"

.. index::
  triple: configuration; opscode_authz; dir

opscode_authz['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-authz"

*Example*:

.. code-block:: ruby

  opscode_authz['dir'] = "/var/opt/opscode/opscode-authz"

.. index::
  triple: configuration; opscode_authz; enable

opscode_authz['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_authz['enable'] = true

.. index::
  triple: configuration; opscode_authz; ha

opscode_authz['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_authz['ha'] = false

.. index::
  triple: configuration; opscode_authz; log_directory

opscode_authz['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-authz"

*Example*:

.. code-block:: ruby

  opscode_authz['log_directory'] = "/var/log/opscode/opscode-authz"

.. index::
  triple: configuration; opscode_authz; svlogd_size

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

.. index::
  triple: configuration; opscode_authz; svlogd_num

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

.. index::
  triple: configuration; opscode_authz; port

opscode_authz['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9463

*Example*:

.. code-block:: ruby

  opscode_authz['port'] = 9463

.. index::
  triple: configuration; opscode_authz; vip

opscode_authz['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_authz['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_certificate; dir

opscode_certificate['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-certificate"

*Example*:

.. code-block:: ruby

  opscode_certificate['dir'] = "/var/opt/opscode/opscode-certificate"

.. index::
  triple: configuration; opscode_certificate; enable

opscode_certificate['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_certificate['enable'] = true

.. index::
  triple: configuration; opscode_certificate; ha

opscode_certificate['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_certificate['ha'] = false

.. index::
  triple: configuration; opscode_certificate; log_directory

opscode_certificate['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-certificate"

*Example*:

.. code-block:: ruby

  opscode_certificate['log_directory'] = "/var/log/opscode/opscode-certificate"

.. index::
  triple: configuration; opscode_certificate; svlogd_size

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

.. index::
  triple: configuration; opscode_certificate; svlogd_num

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

.. index::
  triple: configuration; opscode_certificate; num_certificates_per_worker

opscode_certificate['num_certificates_per_worker']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "50"

*Example*:

.. code-block:: ruby

  opscode_certificate['num_certificates_per_worker'] = "50"

.. index::
  triple: configuration; opscode_certificate; num_workers

opscode_certificate['num_workers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "2"

*Example*:

.. code-block:: ruby

  opscode_certificate['num_workers'] = "2"

.. index::
  triple: configuration; opscode_certificate; port

opscode_certificate['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  5140

*Example*:

.. code-block:: ruby

  opscode_certificate['port'] = 5140

.. index::
  triple: configuration; opscode_certificate; vip

opscode_certificate['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_certificate['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_chef; backlog

opscode_chef['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_chef['backlog'] = 1024

.. index::
  triple: configuration; opscode_chef; checksum_path

opscode_chef['checksum_path']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef/checksum"

*Example*:

.. code-block:: ruby

  opscode_chef['checksum_path'] = "/var/opt/opscode/opscode-chef/checksum"

.. index::
  triple: configuration; opscode_chef; dir

opscode_chef['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef"

*Example*:

.. code-block:: ruby

  opscode_chef['dir'] = "/var/opt/opscode/opscode-chef"

.. index::
  triple: configuration; opscode_chef; enable

opscode_chef['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_chef['enable'] = true

.. index::
  triple: configuration; opscode_chef; environment

opscode_chef['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_chef['environment'] = "privatechef"

.. index::
  triple: configuration; opscode_chef; ha

opscode_chef['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_chef['ha'] = false

.. index::
  triple: configuration; opscode_chef; listen

opscode_chef['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9460"

*Example*:

.. code-block:: ruby

  opscode_chef['listen'] = "127.0.0.1:9460"

.. index::
  triple: configuration; opscode_chef; log_directory

opscode_chef['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-chef"

*Example*:

.. code-block:: ruby

  opscode_chef['log_directory'] = "/var/log/opscode/opscode-chef"

.. index::
  triple: configuration; opscode_chef; svlogd_size

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

.. index::
  triple: configuration; opscode_chef; svlogd_num

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

.. index::
  triple: configuration; opscode_chef; port

opscode_chef['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['port'] = 9460

.. index::
  triple: configuration; opscode_chef; proxy_user

opscode_chef['proxy_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "pivotal"

*Example*:

.. code-block:: ruby

  opscode_chef['proxy_user'] = "pivotal"

.. index::
  triple: configuration; opscode_chef; sandbox_path

opscode_chef['sandbox_path']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-chef/sandbox"

*Example*:

.. code-block:: ruby

  opscode_chef['sandbox_path'] = "/var/opt/opscode/opscode-chef/sandbox"

.. index::
  triple: configuration; opscode_chef; tcp_nodelay

opscode_chef['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_chef['tcp_nodelay'] = true

.. index::
  triple: configuration; opscode_chef; umask

opscode_chef['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_chef['umask'] = "0022"

.. index::
  triple: configuration; opscode_chef; upload_internal_port

opscode_chef['upload_internal_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_port'] = 9460

.. index::
  triple: configuration; opscode_chef; upload_internal_proto

opscode_chef['upload_internal_proto']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_proto'] = "http"

.. index::
  triple: configuration; opscode_chef; upload_internal_vip

opscode_chef['upload_internal_vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_internal_vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_chef; upload_port

opscode_chef['upload_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9460

*Example*:

.. code-block:: ruby

  opscode_chef['upload_port'] = 9460

.. index::
  triple: configuration; opscode_chef; upload_proto

opscode_chef['upload_proto']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_proto'] = "http"

.. index::
  triple: configuration; opscode_chef; upload_vip

opscode_chef['upload_vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['upload_vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_chef; url

opscode_chef['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9460"

*Example*:

.. code-block:: ruby

  opscode_chef['url'] = "http://127.0.0.1:9460"

.. index::
  triple: configuration; opscode_chef; validation_client_name

opscode_chef['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_chef['validation_client_name'] = "chef"

.. index::
  triple: configuration; opscode_chef; vip

opscode_chef['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_chef['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_chef; web_ui_admin_default_password

opscode_chef['web_ui_admin_default_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "p@ssw0rd1"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_admin_default_password'] = "p@ssw0rd1"

.. index::
  triple: configuration; opscode_chef; web_ui_admin_user_name

opscode_chef['web_ui_admin_user_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "admin"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_admin_user_name'] = "admin"

.. index::
  triple: configuration; opscode_chef; web_ui_client_name

opscode_chef['web_ui_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef-webui"

*Example*:

.. code-block:: ruby

  opscode_chef['web_ui_client_name'] = "chef-webui"

.. index::
  triple: configuration; opscode_chef; worker_processes

opscode_chef['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_chef['worker_processes'] = 4

.. index::
  triple: configuration; opscode_chef; worker_timeout

opscode_chef['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_chef['worker_timeout'] = 3600

.. index::
  triple: configuration; opscode_erchef; auth_skew

opscode_erchef['auth_skew']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "900"

*Example*:

.. code-block:: ruby

  opscode_erchef['auth_skew'] = "900"

.. index::
  triple: configuration; opscode_erchef; bulk_fetch_batch_size

opscode_erchef['bulk_fetch_batch_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5"

*Example*:

.. code-block:: ruby

  opscode_erchef['bulk_fetch_batch_size'] = "5"

.. index::
  triple: configuration; opscode_erchef; cache_ttl

opscode_erchef['cache_ttl']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "3600"

*Example*:

.. code-block:: ruby

  opscode_erchef['cache_ttl'] = "3600"

.. index::
  triple: configuration; opscode_erchef; couchdb_max_conn

opscode_erchef['couchdb_max_conn']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "100"

*Example*:

.. code-block:: ruby

  opscode_erchef['couchdb_max_conn'] = "100"

.. index::
  triple: configuration; opscode_erchef; db_pool_size

opscode_erchef['db_pool_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "20"

*Example*:

.. code-block:: ruby

  opscode_erchef['db_pool_size'] = "20"

.. index::
  triple: configuration; opscode_erchef; dir

opscode_erchef['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-erchef"

*Example*:

.. code-block:: ruby

  opscode_erchef['dir'] = "/var/opt/opscode/opscode-erchef"

.. index::
  triple: configuration; opscode_erchef; enable

opscode_erchef['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_erchef['enable'] = true

.. index::
  triple: configuration; opscode_erchef; ha

opscode_erchef['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_erchef['ha'] = false

.. index::
  triple: configuration; opscode_erchef; listen

opscode_erchef['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_erchef['listen'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_erchef; log_directory

opscode_erchef['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-erchef"

*Example*:

.. code-block:: ruby

  opscode_erchef['log_directory'] = "/var/log/opscode/opscode-erchef"

.. index::
  triple: configuration; opscode_erchef; svlogd_size

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

.. index::
  triple: configuration; opscode_erchef; svlogd_num

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

.. index::
  triple: configuration; opscode_erchef; max_cache_size

opscode_erchef['max_cache_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "10000"

*Example*:

.. code-block:: ruby

  opscode_erchef['max_cache_size'] = "10000"

.. index::
  triple: configuration; opscode_erchef; port

opscode_erchef['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  8000

*Example*:

.. code-block:: ruby

  opscode_erchef['port'] = 8000

.. index::
  triple: configuration; opscode_erchef; vip

opscode_erchef['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_erchef['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_expander; consumer_id

opscode_expander['consumer_id']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "default"

*Example*:

.. code-block:: ruby

  opscode_expander['consumer_id'] = "default"

.. index::
  triple: configuration; opscode_expander; dir

opscode_expander['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-expander"

*Example*:

.. code-block:: ruby

  opscode_expander['dir'] = "/var/opt/opscode/opscode-expander"

.. index::
  triple: configuration; opscode_expander; enable

opscode_expander['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_expander['enable'] = true

.. index::
  triple: configuration; opscode_expander; ha

opscode_expander['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_expander['ha'] = false

.. index::
  triple: configuration; opscode_expander; log_directory

opscode_expander['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-expander"

*Example*:

.. code-block:: ruby

  opscode_expander['log_directory'] = "/var/log/opscode/opscode-expander"

.. index::
  triple: configuration; opscode_expander; svlogd_size

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

.. index::
  triple: configuration; opscode_expander; svlogd_num

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

.. index::
  triple: configuration; opscode_expander; nodes

opscode_expander['nodes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  2

*Example*:

.. code-block:: ruby

  opscode_expander['nodes'] = 2

.. index::
  triple: configuration; opscode_expander; reindexer_log_directory

opscode_expander['reindexer_log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-expander-reindexer"

*Example*:

.. code-block:: ruby

  opscode_expander['reindexer_log_directory'] = "/var/log/opscode/opscode-expander-reindexer"

.. index::
  triple: configuration; opscode_expander; reindexer_svlogd_size

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

.. index::
  triple: configuration; opscode_expander; reindexer_svlogd_num

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

.. index::
  triple: configuration; opscode_org_creator; create_splay_ms

opscode_org_creator['create_splay_ms']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  25000

*Example*:

.. code-block:: ruby

  opscode_org_creator['create_splay_ms'] = 25000

.. index::
  triple: configuration; opscode_org_creator; create_wait_ms

opscode_org_creator['create_wait_ms']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  30000

*Example*:

.. code-block:: ruby

  opscode_org_creator['create_wait_ms'] = 30000

.. index::
  triple: configuration; opscode_org_creator; dir

opscode_org_creator['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-org-creator"

*Example*:

.. code-block:: ruby

  opscode_org_creator['dir'] = "/var/opt/opscode/opscode-org-creator"

.. index::
  triple: configuration; opscode_org_creator; enable

opscode_org_creator['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_org_creator['enable'] = true

.. index::
  triple: configuration; opscode_org_creator; ha

opscode_org_creator['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_org_creator['ha'] = false

.. index::
  triple: configuration; opscode_org_creator; log_directory

opscode_org_creator['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-org-creator"

*Example*:

.. code-block:: ruby

  opscode_org_creator['log_directory'] = "/var/log/opscode/opscode-org-creator"

.. index::
  triple: configuration; opscode_org_creator; svlogd_size

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

.. index::
  triple: configuration; opscode_org_creator; svlogd_num

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

.. index::
  triple: configuration; opscode_org_creator; max_workers

opscode_org_creator['max_workers']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1

*Example*:

.. code-block:: ruby

  opscode_org_creator['max_workers'] = 1

.. index::
  triple: configuration; opscode_org_creator; port

opscode_org_creator['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4369

*Example*:

.. code-block:: ruby

  opscode_org_creator['port'] = 4369

.. index::
  triple: configuration; opscode_org_creator; ready_org_depth

opscode_org_creator['ready_org_depth']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  10

*Example*:

.. code-block:: ruby

  opscode_org_creator['ready_org_depth'] = 10

.. index::
  triple: configuration; opscode_solr; commit_interval

opscode_solr['commit_interval']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  60000

*Example*:

.. code-block:: ruby

  opscode_solr['commit_interval'] = 60000

.. index::
  triple: configuration; opscode_solr; data_dir

opscode_solr['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-solr/data"

*Example*:

.. code-block:: ruby

  opscode_solr['data_dir'] = "/var/opt/opscode/opscode-solr/data"

.. index::
  triple: configuration; opscode_solr; dir

opscode_solr['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-solr"

*Example*:

.. code-block:: ruby

  opscode_solr['dir'] = "/var/opt/opscode/opscode-solr"

.. index::
  triple: configuration; opscode_solr; enable

opscode_solr['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_solr['enable'] = true

.. index::
  triple: configuration; opscode_solr; ha

opscode_solr['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_solr['ha'] = false

.. index::
  triple: configuration; opscode_solr; heap_size

opscode_solr['heap_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "256M"

*Example*:

.. code-block:: ruby

  opscode_solr['heap_size'] = "256M"

.. index::
  triple: configuration; opscode_solr; ip_address

opscode_solr['ip_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_solr['ip_address'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_solr; java_opts

opscode_solr['java_opts']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ""

*Example*:

.. code-block:: ruby

  opscode_solr['java_opts'] = ""

.. index::
  triple: configuration; opscode_solr; log_directory

opscode_solr['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-solr"

*Example*:

.. code-block:: ruby

  opscode_solr['log_directory'] = "/var/log/opscode/opscode-solr"

.. index::
  triple: configuration; opscode_solr; svlogd_size

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

.. index::
  triple: configuration; opscode_solr; svlogd_num

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

.. index::
  triple: configuration; opscode_solr; max_commit_docs

opscode_solr['max_commit_docs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1000

*Example*:

.. code-block:: ruby

  opscode_solr['max_commit_docs'] = 1000

.. index::
  triple: configuration; opscode_solr; max_field_length

opscode_solr['max_field_length']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  100000

*Example*:

.. code-block:: ruby

  opscode_solr['max_field_length'] = 100000

.. index::
  triple: configuration; opscode_solr; max_merge_docs

opscode_solr['max_merge_docs']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  2147483647

*Example*:

.. code-block:: ruby

  opscode_solr['max_merge_docs'] = 2147483647

.. index::
  triple: configuration; opscode_solr; merge_factor

opscode_solr['merge_factor']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  100

*Example*:

.. code-block:: ruby

  opscode_solr['merge_factor'] = 100

.. index::
  triple: configuration; opscode_solr; poll_seconds

opscode_solr['poll_seconds']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  20

*Example*:

.. code-block:: ruby

  opscode_solr['poll_seconds'] = 20

.. index::
  triple: configuration; opscode_solr; port

opscode_solr['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  8983

*Example*:

.. code-block:: ruby

  opscode_solr['port'] = 8983

.. index::
  triple: configuration; opscode_solr; ram_buffer_size

opscode_solr['ram_buffer_size']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  200

*Example*:

.. code-block:: ruby

  opscode_solr['ram_buffer_size'] = 200

.. index::
  triple: configuration; opscode_solr; url

opscode_solr['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://localhost:8983"

*Example*:

.. code-block:: ruby

  opscode_solr['url'] = "http://localhost:8983"

.. index::
  triple: configuration; opscode_solr; vip

opscode_solr['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_solr['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_webui; backlog

opscode_webui['backlog']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  1024

*Example*:

.. code-block:: ruby

  opscode_webui['backlog'] = 1024

.. index::
  triple: configuration; opscode_webui; cookie_domain

opscode_webui['cookie_domain']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "all"

*Example*:

.. code-block:: ruby

  opscode_webui['cookie_domain'] = "all"

.. index::
  triple: configuration; opscode_webui; cookie_secret

opscode_webui['cookie_secret']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "47b3b8d95dea455baf32155e95d1e64e"

*Example*:

.. code-block:: ruby

  opscode_webui['cookie_secret'] = "47b3b8d95dea455baf32155e95d1e64e"

.. index::
  triple: configuration; opscode_webui; dir

opscode_webui['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/opscode-webui"

*Example*:

.. code-block:: ruby

  opscode_webui['dir'] = "/var/opt/opscode/opscode-webui"

.. index::
  triple: configuration; opscode_webui; enable

opscode_webui['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_webui['enable'] = true

.. index::
  triple: configuration; opscode_webui; environment

opscode_webui['environment']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "privatechef"

*Example*:

.. code-block:: ruby

  opscode_webui['environment'] = "privatechef"

.. index::
  triple: configuration; opscode_webui; ha

opscode_webui['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  opscode_webui['ha'] = false

.. index::
  triple: configuration; opscode_webui; listen

opscode_webui['listen']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1:9462"

*Example*:

.. code-block:: ruby

  opscode_webui['listen'] = "127.0.0.1:9462"

.. index::
  triple: configuration; opscode_webui; log_directory

opscode_webui['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/opscode-webui"

*Example*:

.. code-block:: ruby

  opscode_webui['log_directory'] = "/var/log/opscode/opscode-webui"

.. index::
  triple: configuration; opscode_webui; svlogd_size

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

.. index::
  triple: configuration; opscode_webui; svlogd_num

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

.. index::
  triple: configuration; opscode_webui; port

opscode_webui['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  9462

*Example*:

.. code-block:: ruby

  opscode_webui['port'] = 9462

.. index::
  triple: configuration; opscode_webui; session_key

opscode_webui['session_key']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "_sandbox_session"

*Example*:

.. code-block:: ruby

  opscode_webui['session_key'] = "_sandbox_session"

.. index::
  triple: configuration; opscode_webui; tcp_nodelay

opscode_webui['tcp_nodelay']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  opscode_webui['tcp_nodelay'] = true

.. index::
  triple: configuration; opscode_webui; umask

opscode_webui['umask']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "0022"

*Example*:

.. code-block:: ruby

  opscode_webui['umask'] = "0022"

.. index::
  triple: configuration; opscode_webui; url

opscode_webui['url']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "http://127.0.0.1:9462"

*Example*:

.. code-block:: ruby

  opscode_webui['url'] = "http://127.0.0.1:9462"

.. index::
  triple: configuration; opscode_webui; validation_client_name

opscode_webui['validation_client_name']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  opscode_webui['validation_client_name'] = "chef"

.. index::
  triple: configuration; opscode_webui; vip

opscode_webui['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  opscode_webui['vip'] = "127.0.0.1"

.. index::
  triple: configuration; opscode_webui; worker_processes

opscode_webui['worker_processes']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4

*Example*:

.. code-block:: ruby

  opscode_webui['worker_processes'] = 4

.. index::
  triple: configuration; opscode_webui; worker_timeout

opscode_webui['worker_timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  3600

*Example*:

.. code-block:: ruby

  opscode_webui['worker_timeout'] = 3600

.. index::
  triple: configuration; postgresql; data_dir

postgresql['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/postgresql/data"

*Example*:

.. code-block:: ruby

  postgresql['data_dir'] = "/var/opt/opscode/postgresql/data"

.. index::
  triple: configuration; postgresql; dir

postgresql['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/postgresql"

*Example*:

.. code-block:: ruby

  postgresql['dir'] = "/var/opt/opscode/postgresql"

.. index::
  triple: configuration; postgresql; enable

postgresql['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  postgresql['enable'] = true

.. index::
  triple: configuration; postgresql; ha

postgresql['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  postgresql['ha'] = false

.. index::
  triple: configuration; postgresql; home

postgresql['home']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/opt/opscode/embedded"

*Example*:

.. code-block:: ruby

  postgresql['home'] = "/opt/opscode/embedded"

.. index::
  triple: configuration; postgresql; listen_address

postgresql['listen_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "localhost"

*Example*:

.. code-block:: ruby

  postgresql['listen_address'] = "localhost"

.. index::
  triple: configuration; postgresql; log_directory

postgresql['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/postgresql"

*Example*:

.. code-block:: ruby

  postgresql['log_directory'] = "/var/log/opscode/postgresql"

.. index::
  triple: configuration; postgresql; svlogd_size

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

.. index::
  triple: configuration; postgresql; svlogd_num

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

.. index::
  triple: configuration; postgresql; max_connections

postgresql['max_connections']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  200

*Example*:

.. code-block:: ruby

  postgresql['max_connections'] = 200

.. index::
  triple: configuration; postgresql; md5_auth_cidr_addresses

postgresql['md5_auth_cidr_addresses']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  []


*Example*:

.. code-block:: ruby

  postgresql['md5_auth_cidr_addresses'] = []


.. index::
  triple: configuration; postgresql; port

postgresql['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  5432

*Example*:

.. code-block:: ruby

  postgresql['port'] = 5432

.. index::
  triple: configuration; postgresql; shell

postgresql['shell']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/bin/sh"

*Example*:

.. code-block:: ruby

  postgresql['shell'] = "/bin/sh"

.. index::
  triple: configuration; postgresql; shmall

postgresql['shmall']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  4194304

*Example*:

.. code-block:: ruby

  postgresql['shmall'] = 4194304

.. index::
  triple: configuration; postgresql; shmmax

postgresql['shmmax']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  17179869184

*Example*:

.. code-block:: ruby

  postgresql['shmmax'] = 17179869184

.. index::
  triple: configuration; postgresql; sql_password

postgresql['sql_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "snakepliskin"

*Example*:

.. code-block:: ruby

  postgresql['sql_password'] = "snakepliskin"

.. index::
  triple: configuration; postgresql; sql_ro_password

postgresql['sql_ro_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "shmunzeltazzen"

*Example*:

.. code-block:: ruby

  postgresql['sql_ro_password'] = "shmunzeltazzen"

.. index::
  triple: configuration; postgresql; sql_ro_user

postgresql['sql_ro_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef_ro"

*Example*:

.. code-block:: ruby

  postgresql['sql_ro_user'] = "opscode_chef_ro"

.. index::
  triple: configuration; postgresql; sql_user

postgresql['sql_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode_chef"

*Example*:

.. code-block:: ruby

  postgresql['sql_user'] = "opscode_chef"

.. index::
  triple: configuration; postgresql; trust_auth_cidr_addresses

postgresql['trust_auth_cidr_addresses']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  ["127.0.0.1/32", "::1/128"]


*Example*:

.. code-block:: ruby

  postgresql['trust_auth_cidr_addresses'] = ["127.0.0.1/32", "::1/128"]


.. index::
  triple: configuration; postgresql; username

postgresql['username']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode-pgsql"

*Example*:

.. code-block:: ruby

  postgresql['username'] = "opscode-pgsql"

.. index::
  triple: configuration; postgresql; vip

postgresql['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  postgresql['vip'] = "127.0.0.1"

.. index::
  triple: configuration; rabbitmq; consumer_id

rabbitmq['consumer_id']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "hotsauce"

*Example*:

.. code-block:: ruby

  rabbitmq['consumer_id'] = "hotsauce"

.. index::
  triple: configuration; rabbitmq; data_dir

rabbitmq['data_dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/rabbitmq/db"

*Example*:

.. code-block:: ruby

  rabbitmq['data_dir'] = "/var/opt/opscode/rabbitmq/db"

.. index::
  triple: configuration; rabbitmq; dir

rabbitmq['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/rabbitmq"

*Example*:

.. code-block:: ruby

  rabbitmq['dir'] = "/var/opt/opscode/rabbitmq"

.. index::
  triple: configuration; rabbitmq; enable

rabbitmq['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  rabbitmq['enable'] = true

.. index::
  triple: configuration; rabbitmq; ha

rabbitmq['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  rabbitmq['ha'] = false

.. index::
  triple: configuration; rabbitmq; jobs_password

rabbitmq['jobs_password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "workcomplete"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_password'] = "workcomplete"

.. index::
  triple: configuration; rabbitmq; jobs_user

rabbitmq['jobs_user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "jobs"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_user'] = "jobs"

.. index::
  triple: configuration; rabbitmq; jobs_vhost

rabbitmq['jobs_vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/jobs"

*Example*:

.. code-block:: ruby

  rabbitmq['jobs_vhost'] = "/jobs"

.. index::
  triple: configuration; rabbitmq; log_directory

rabbitmq['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/rabbitmq"

*Example*:

.. code-block:: ruby

  rabbitmq['log_directory'] = "/var/log/opscode/rabbitmq"

.. index::
  triple: configuration; rabbitmq; svlogd_size

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

.. index::
  triple: configuration; rabbitmq; svlogd_num

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

.. index::
  triple: configuration; rabbitmq; node_ip_address

rabbitmq['node_ip_address']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  rabbitmq['node_ip_address'] = "127.0.0.1"

.. index::
  triple: configuration; rabbitmq; node_port

rabbitmq['node_port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "5672"

*Example*:

.. code-block:: ruby

  rabbitmq['node_port'] = "5672"

.. index::
  triple: configuration; rabbitmq; nodename

rabbitmq['nodename']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "rabbit@localhost"

*Example*:

.. code-block:: ruby

  rabbitmq['nodename'] = "rabbit@localhost"

.. index::
  triple: configuration; rabbitmq; password

rabbitmq['password']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chefrocks"

*Example*:

.. code-block:: ruby

  rabbitmq['password'] = "chefrocks"

.. index::
  triple: configuration; rabbitmq; reindexer_vhost

rabbitmq['reindexer_vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/reindexer"

*Example*:

.. code-block:: ruby

  rabbitmq['reindexer_vhost'] = "/reindexer"

.. index::
  triple: configuration; rabbitmq; user

rabbitmq['user']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "chef"

*Example*:

.. code-block:: ruby

  rabbitmq['user'] = "chef"

.. index::
  triple: configuration; rabbitmq; vhost

rabbitmq['vhost']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/chef"

*Example*:

.. code-block:: ruby

  rabbitmq['vhost'] = "/chef"

.. index::
  triple: configuration; rabbitmq; vip

rabbitmq['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  rabbitmq['vip'] = "127.0.0.1"

.. index::
  triple: configuration; redis; appendfsync

redis['appendfsync']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "everysec"

*Example*:

.. code-block:: ruby

  redis['appendfsync'] = "everysec"

.. index::
  triple: configuration; redis; appendonly

redis['appendonly']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "no"

*Example*:

.. code-block:: ruby

  redis['appendonly'] = "no"

.. index::
  triple: configuration; redis; bind

redis['bind']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  redis['bind'] = "127.0.0.1"

.. index::
  triple: configuration; redis; databases

redis['databases']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "16"

*Example*:

.. code-block:: ruby

  redis['databases'] = "16"

.. index::
  triple: configuration; redis; dir

redis['dir']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['dir'] = "/var/opt/opscode/redis"

.. index::
  triple: configuration; redis; enable

redis['enable']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  true

*Example*:

.. code-block:: ruby

  redis['enable'] = true

.. index::
  triple: configuration; redis; ha

redis['ha']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  false

*Example*:

.. code-block:: ruby

  redis['ha'] = false

.. index::
  triple: configuration; redis; log_directory

redis['log_directory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/log/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['log_directory'] = "/var/log/opscode/redis"

.. index::
  triple: configuration; redis; svlogd_size

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

.. index::
  triple: configuration; redis; svlogd_num

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

.. index::
  triple: configuration; redis; loglevel

redis['loglevel']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "notice"

*Example*:

.. code-block:: ruby

  redis['loglevel'] = "notice"

.. index::
  triple: configuration; redis; maxmemory

redis['maxmemory']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "1g"

*Example*:

.. code-block:: ruby

  redis['maxmemory'] = "1g"

.. index::
  triple: configuration; redis; maxmemory_policy

redis['maxmemory_policy']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "volatile-lru"

*Example*:

.. code-block:: ruby

  redis['maxmemory_policy'] = "volatile-lru"

.. index::
  triple: configuration; redis; port

redis['port']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "6379"

*Example*:

.. code-block:: ruby

  redis['port'] = "6379"

.. index::
  triple: configuration; redis; root

redis['root']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/var/opt/opscode/redis"

*Example*:

.. code-block:: ruby

  redis['root'] = "/var/opt/opscode/redis"

.. index::
  triple: configuration; redis; timeout

redis['timeout']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "300"

*Example*:

.. code-block:: ruby

  redis['timeout'] = "300"

.. index::
  triple: configuration; redis; vip

redis['vip']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "127.0.0.1"

*Example*:

.. code-block:: ruby

  redis['vip'] = "127.0.0.1"

.. index::
  triple: configuration; redis; vm

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


.. index::
  triple: configuration; user; home

user['home']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/opt/opscode/embedded"

*Example*:

.. code-block:: ruby

  user['home'] = "/opt/opscode/embedded"

.. index::
  triple: configuration; user; shell

user['shell']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "/bin/sh"

*Example*:

.. code-block:: ruby

  user['shell'] = "/bin/sh"

.. index::
  triple: configuration; user; username

user['username']
+++++++++++++++++++++++++++++++++++++++++++++++++++++

*Default Value*:

.. code-block:: ruby

  "opscode"

*Example*:

.. code-block:: ruby

  user['username'] = "opscode"

.. index::
  pair: configuration; log_rotation

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

.. index::
  triple: configuration; log_retention; couchdb

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

.. index::
  triple: configuration; log_retention; postgresql

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

.. index::
  triple: configuration; log_retention; rabbitmq

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

.. index::
  triple: configuration; log_retention; redis

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

.. index::
  triple: configuration; log_retention; opscode-authz

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

.. index::
  triple: configuration; log_retention; opscode-certificate

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

.. index::
  triple: configuration; log_retention; opscode-account

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

.. index::
  triple: configuration; log_retention; opscode-solr

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

.. index::
  triple: configuration; log_retention; opscode-expander

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

.. index::
  triple: configuration; log_retention; opscode-org-creator

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

.. index::
  triple: configuration; log_retention; opscode-chef

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

.. index::
  triple: configuration; log_retention; opscode-erchef

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

.. index::
  triple: configuration; log_retention; opscode-webui

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

.. index::
  triple: configuration; log_retention; nagios

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

.. index::
  triple: configuration; log_retention; nginx

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


private-chef-ctl
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_ha.rst

General Commands
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_general.rst

HA Commands
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_ha.rst

Services Commands
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_services.rst

Reading the status line
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_services_read_status_line.rst

Logs
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_services_read_status_line_service_logs.rst

Services in HA deployments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_services_read_status_line_on_ha.rst

User Commands
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ctl_private_chef_user.rst

Logs
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs.rst

View Logs
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_view.rst

Services
-----------------------------------------------------
The following services used by |chef private| generate log files:

couchdb
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_couchdb.rst

fcgiwrap
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_fcgiwrap.rst

nagios
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_nagios.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_nginx.rst

**Access Logs**

.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_nginx_read_logs.rst

nrpe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_nrpe.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_account.rst

opscode-authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_authz.rst

opscode-certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_certificate.rst

opscode-chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_chef.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_expander_reindexer.rst

opscode-expander-reindexer
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_expander.rst

opscode-org-creator
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_org_creator.rst

opscode-solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_solr.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_opscode_webui.rst

phpfpm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_phpfpm.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_postgresql.rst

rabbitmq
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_rabbitmq.rst

redis
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_logs_services_redis.rst


User Management
=====================================================
The following tasks can be done around user management.

Change Password
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_change_password.rst

Create User
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_create.rst

Edit Profile
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_edit_profile.rst

Recover Password
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_recover_password.rst

Regenerate Private Key
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_regenerate_private_key.rst

View Profile
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_user_management_view_profile.rst

High Availability
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha.rst

Scalability
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scalability.rst

Failover and Recovery
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_failover.rst

Graceful Transitions
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_transitions.rst

DRBD
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_drbd.rst

Split Brains (yum)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_drbd_split_brain.rst

Split-brain Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_drbd_handlers.rst

Assumptions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_drbd_assumptions.rst

Failure Scenarios
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scenario.rst

Scenarios 1 and 2
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scenario_1and2.rst

Scenario 3
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scenario_3.rst

Scenario 4
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scenario_4.rst

Scenario 5
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_ha_scenario_5.rst

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
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_standalone.rst

High Availability Upgrade
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha.rst

Identify Bootstrap Server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_identify_bootstrap_server.rst

Identify Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_identify_backend_master.rst

Set Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_set_backend_master.rst

Upgrade Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_upgrade_backend_master.rst

Validate Backend Master
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_validate_backend_master.rst

Copy Configuration to Nodes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_copy_config_to_nodes.rst

Upgrade Backend Slave
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_upgrade_backend_slave.rst

Upgrade Front End
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_upgrade_ha_upgrade_front_end.rst

Active Directory / LDAP
=====================================================
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_adldap.rst

Login when AD / LDAP Enabled
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_adldap_login_enabled.rst

First-time Login
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_adldap_login_first_time.rst

Accessing Chef
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_adldap_enable_then_access.rst

Accessing when AD/LDAP is down
-----------------------------------------------------
.. include:: ../../includes_private_chef_10x/includes_private_chef_10x_admin_adldap_access_when_down.rst

