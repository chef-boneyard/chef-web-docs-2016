=====================================================
Configure Private Chef
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

Configuration of |chef private| is done using the |private chef rb| file that is located at ``/etc/opscode``. This file is written in |ruby|, which allows some flexibility around how |chef private| can be configured.

While there are a great deal of configuration options in the |private chef rb| file, the actual number of required and recommended settings is quite small. For a Standalone server configuration, configuration of the |private chef rb| file is not required because the default settings take care of everything.

For the High Availability or Tiered configurations, some of the settings will need to be modified. For example, based on the following decisions:

* The topology
* The number of servers
* The ``api_fqdn`` setting
* The ``backend_vip`` setting
* The ``notification_email`` setting

These details are covered in the Tiered and High Availability sections for more information about these settings.

Apply Configuration Changes
=====================================================
The ``private-chef-ctl reconfigure`` command reads the |private chef rb| file and then configures all of the required services. Any time a change is made to the configuration, it will be applied after the ``private-chef-ctl reconfigure`` command is run.

Common Options
=====================================================
The following options are common for the |chef private| server.

topology
-----------------------------------------------------
|chef private| configuration settings are determined by the topology:

* **Standalone (default):** All components of |chef private| run on a single server.
* **Tiered:** Many front-end servers; a single back-end server.
* **High Availability:** Many front-end servers; a back-end cluster.

For Standalone:

.. code-block:: ruby

   topology "standalone"

For Tiered:

.. code-block:: ruby

   topology "tier"

For High Availability:

.. code-block:: ruby

   topology "ha"


notification_email
-----------------------------------------------------
|chef private| generates notification emails based on the results of internal monitoring and/or triggered by periodic |cron| jobs. The ``notification_email`` setting configures the email address to which these email messages will be sent.

For example, using the default value:

.. code-block:: ruby

   pc-default@opscode.com

Or:

.. code-block:: ruby

   notification_email "sysadmin@example.com"

from_email
-----------------------------------------------------
|chef private| sends emails for such things as password resets and organization invites. The ``from_email`` setting configures the email address that will be used to send these messages.

.. note:: This setting does not configure notification emails. Notification emails are sent using mail transfer agent settings on the server from which a notification email originates.

For example, using the default value:

.. code-block:: ruby

   donotreply@opscode.com

or:

.. code-block:: ruby

   from_email '"Chef" <opscode-chef@example.com>'

server
-----------------------------------------------------
A server entry represents an individual server in the |chef private| cluster. Each server must have an IP address and a role (front-end or back-end). Each server can be configured to run as a bootstrap server.

When running the High Availability topology, each back-end server may be configured using the ``cluster_ipaddress`` setting. This setting is used for replication and communication between all of the back-end servers. If the ``cluster_ipaddress`` setting is not provided, the ``ipaddress`` setting is used instead.

For a front-end server:

.. code-block:: ruby

   server "fe1.example.com",
     :ipaddress => "192.168.4.2",
     :role => "frontend"

For a back-end server that is not marked to run the bootstrap:

.. code-block:: ruby

   server "be2.example.com",
     :ipaddress => "192.168.4.6",
     :role => "backend",
     :cluster_ipaddress => "10.1.2.12"

For a back-end server that is configured as a bootstrap server:

.. code-block:: ruby

   server "be1.example.com",
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "10.1.2.10"

api_fqdn
-----------------------------------------------------
In a Tiered or High Availability scenario, it is expected that multiple front-end servers will be running. The ``api_fqdn`` setting should point to the |fqdn| that will be used to access the user interface for |chef private| and for the |api chef server|.

The following example shows how this setting is configured when the domain is ``chef.example.com``:

.. code-block:: ruby

   api_fqdn "chef.example.com"

backend_vip
-----------------------------------------------------
When operating in a Tiered or High Availability scenario, the ``backend_vip`` setting must be configured.

* In the High Availability scenario, this setting should be set to the |fqdn| and IP address that will be shared among the back-end servers.
* In a Tiered configuration, this setting should point directly to the back-end server.

For example:

.. code-block:: ruby

   backend_vip "be.example.com",
     :ipaddress => "192.168.4.7"

General Options
=====================================================
The vast majority of configurations are achieved using only the common options listed previously. |chef private| does offer additional configuration and this section lists them all. Please consider talking with an |company_name| solutions engineer about these settings before making changes.

bootstrap
-----------------------------------------------------
This configuration file has the following settings for bootstrap:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bootstrap['enable']``
     - Whether we should attempt to bootstrap the private chef system. Typically turned on only on systems that have bootstrap enabled via a ``server`` entry. Default value: ``true``. For example:
       ::

          bootstrap['enable'] = true

couchdb
-----------------------------------------------------
This configuration file has the following settings for the |service couchdb| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``couchdb['batch_save_interval']``
     - The time in milliseconds within which we will save documents to disk, regardless of how many have been written. Default value: ``1000``. For example:
       ::

          couchdb['batch_save_interval'] = 1000

   * - ``couchdb['batch_save_size']``
     - The number of documents that will trigger a batch save. Default value: ``1000``. For example:
       ::

          couchdb['batch_save_size'] = 1000

   * - ``couchdb['bind_address']``
     - The address that CouchDB will bind to. Default value: ``"127.0.0.1"``. For example:
       ::

          couchdb['bind_address'] = "127.0.0.1"

   * - ``couchdb['data_dir']``
     - Where CouchDB will store its on-disk data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/couchdb/db"``. For example:
       ::

          couchdb['data_dir'] = "/var/opt/opscode/couchdb/db"

   * - ``couchdb['delayed_commits']``
     - Whether commits are delayed. For performance, we tune CouchDB to batch commits according to the ``batch_save_interval`` and ``batch_save_size`` options above. Default value: ``"true"``. For example:
       ::

          couchdb['delayed_commits'] = "true"

   * - ``couchdb['dir']``
     - The base directory for CouchDB data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/couchdb"``. For example:
       ::

          couchdb['dir'] = "/var/opt/opscode/couchdb"

   * - ``couchdb['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          couchdb['enable'] = true

   * - ``couchdb['ha']``
     - |use ha| This is typically managed by the topology of the cluster and the role this server plays in that topology. This setting (when ``true``) will set the |couch db| service to be down. Default value: ``false``. For example:
       ::

          couchdb['ha'] = false

   * - ``couchdb['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/couchdb"``. For example:
       ::

          couchdb['log_directory'] = "/var/log/opscode/couchdb"

   * - ``couchdb['log_level']``
     - |log_level| Default value: ``"error"``. For example:
       ::

          couchdb['log_level'] = "error"

   * - ``couchdb['max_attachment_chunk_size']``
     - The maximum attachment size. Default value: ``"4294967296"``. For example:
       ::

          couchdb['max_attachment_chunk_size'] = "4294967296"

   * - ``couchdb['max_dbs_open']``
     - The maximum number of open databases. Default value: ``10000``. For example:
       ::

          couchdb['max_dbs_open'] = 10000

   * - ``couchdb['max_document_size']``
     - The maximum size of a document. Default value: ``"4294967296"``. For example:
       ::

          couchdb['max_document_size'] = "4294967296"

   * - ``couchdb['os_process_timeout']``
     - How long before timing out external processes, in milliseconds. Default value: ``"300000"``. For example:
       ::

          couchdb['os_process_timeout'] = "300000"

   * - ``couchdb['port']``
     - The port CouchDB will listen on. Default value: ``5984``. For example:
       ::

          couchdb['port'] = 5984

   * - ``couchdb['reduce_limit']``
     - Disable limiting the number of reduces. Default value: ``"false"``. For example:
       ::

          couchdb['reduce_limit'] = "false"

   * - ``couchdb['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          couchdb['svlogd_num'] = 10

   * - ``couchdb['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          couchdb['svlogd_size'] = 1000000

   * - ``couchdb['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          couchdb['vip'] = "127.0.0.1"

database
-----------------------------------------------------
This configuration file has the following settings for the type of database:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``database_type``
     - The type of database we are using. Only ``postgresql`` is fully supported - while ``mysql`` can be used with |chef private|, it requires the end user to install and configure both the server itself and the |mysql| client libraries. Default value: ``postgresql``. For example:
       ::

          database_type "postgresql"

drbd
-----------------------------------------------------
This configuration file has the following settings for |drbd|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``drbd['data_dir']``
     - Where data that should reside on DRBD should live. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/drbd/data"``. For example:
       ::

          drbd['data_dir'] = "/var/opt/opscode/drbd/data"

   * - ``drbd['device']``
     - The device name to use for |drbd|. Default value: ``"/dev/drbd0"``. For example:
       ::

          drbd['device'] = "/dev/drbd0"

   * - ``drbd['dir']``
     - The top level directory for |drbd| configuration. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/drbd"``. For example:
       ::

          drbd['dir'] = "/var/opt/opscode/drbd"

   * - ``drbd['disk']``
     - The local LVM logical volume to use behind |drbd|. Default value: ``"/dev/opscode/drbd"``. For example:
       ::

          drbd['disk'] = "/dev/opscode/drbd"

   * - ``drbd['enable']``
     - Whether or not this server is using |drbd|. This is typically set by the ``role`` this server plays - it is enabled on ``backend`` servers in the ``ha`` topology. Default value: ``false``. For example:
       ::

          drbd['enable'] = false

   * - ``drbd['flexible_meta_disk']``
     - Where |drbd| meta-data is stored. Default value: ``"internal"``. For example:
       ::

          drbd['flexible_meta_disk'] = "internal"

   * - ``drbd['primary']``
     - The ``fqdn``, ``ip`` and ``port`` of the server we consider the |drbd| *primary*. This is typically set automatically from the ``server`` entries with the ``backend`` ``role`` when in an ``ha`` topology. Default value: ``{"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}``. For example:
       ::

          drbd['primary'] = {
            "fqdn"=>"ubuntu.localdomain",
            "ip"=>"192.168.4.131", "port"=>7788
          }

   * - ``drbd['secondary']``
     - Identical to the ``drbd['primary']`` setting, including caveats. Default value: ``{"fqdn"=>"ubuntu.localdomain", "ip"=>"192.168.4.131", "port"=>7788}``. For example:
       ::

          drbd['secondary'] = {
            "fqdn"=>"ubuntu.localdomain",
            "ip"=>"192.168.4.131", "port"=>7788
          }

   * - ``drbd['shared_secret']``
     - The shared secret for |drbd|. This attribute is randomly generated for you when you install the ``bootstrap`` server. You should not need to set it explicitly. Default value: ``"promisespromises"``. For example:
       ::

          drbd['shared_secret'] = "promisespromises"

   * - ``drbd['sync_rate']``
     - The amount of bandwidth to use for data synchronization; typically a small percentage of the available bandwidth available for |drbd| replication. Default value: ``"40M"``. For example:
       ::

          drbd['sync_rate'] = "40M"

   * - ``drbd['version']``
     - The version of |drbd| that is installed on the system. Auto-detected. Default value: ``"8.4.1"``. For example:
       ::

          drbd['version'] = "8.4.1"

keepalived
-----------------------------------------------------
This configuration file has the following settings for |keepalived|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``keepalived['dir']``
     - |directory generic| The default value is the recommended value. Default value: ``"/var/opt/opscode/keepalived"``. For example:
       ::

          keepalived['dir'] = "/var/opt/opscode/keepalived"

   * - ``keepalived['enable']``
     - |enable service| Backend servers in a high availability topology should have this setting enabled. Default value: ``false``. For example:
       ::

          keepalived['enable'] = false

   * - ``keepalived['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/keepalived"``. For example:
       ::

          keepalived['log_directory'] = "/var/log/opscode/keepalived"

   * - ``keepalived['service_order']``
     - |service_order keepalived| |opscode_support| Default value:
       ::

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
           {"key"=>"nginx", "service_name"=>"nginx"}]``.

       For example:
       ::

          keepalived['service_order'] = [
            {"key"=>"couchdb", "service_name"=>"couchdb"},
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
            {"key"=>"nginx", "service_name"=>"nginx"}
          ]

   * - ``keepalived['smtp_connect_timeout']``
     - |timeout smtp_connect| Default value: ``"30"``. For example:
       ::

          keepalived['smtp_connect_timeout'] = "30"

   * - ``keepalived['smtp_server']``
     - |smtp server| Default value: ``"127.0.0.1"``. For example:
       ::

          keepalived['smtp_server'] = "127.0.0.1"

   * - ``keepalived['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          keepalived['svlogd_num'] = 10

   * - ``keepalived['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          keepalived['svlogd_size'] = 1000000

   * - ``keepalived['vrrp_instance_advert_int']``
     - |vrrp_instance_advert| Default value: ``"1"``. For example:
       ::

          keepalived['vrrp_instance_advert_int'] = "1"

   * - ``keepalived['vrrp_instance_interface']``
     - |vrrp_instance_interface| Should be set to the name of the dedicated interface for |keepalived|. Default value: ``"eth0"``. For example:
       ::

          keepalived['vrrp_instance_interface'] = "eth0"

   * - ``keepalived['vrrp_instance_ipaddress']``
     - |vrrp_instance_ipaddress| This is typically set by the ``backend_vip`` option. Default value: ``keepalived['vrrp_instance_ipaddress'] = "192.168.4.131"``.

   * - keepalived['vrrp_instance_ipaddress_dev']``
     - |vrrp_instance_ipaddress_device| Default value: ``"eth0"``. For example:
       ::

          keepalived['vrrp_instance_ipaddress_dev'] = "eth0"

   * - ``keepalived['vrrp_instance_password']``
     - |vrrp_instance_password| This value is generated randomly when the bootstrap server is installed and does not need to be set explicitly. Default value: ``"sneakybeaky"``. For example:
       ::

          keepalived['vrrp_instance_password'] = "sneakybeaky"

   * - ``keepalived['vrrp_instance_priority']``
     - |vrrp_instance_priority| By default, all servers have equal priority. The server with the lowest value will have the highest priority. Default value: ``"100"``. For example:
       ::

          keepalived['vrrp_instance_priority'] = "100"

   * - ``keepalived['vrrp_instance_state']``
     - |vrrp_instance_state| This value should be the same for both servers in the backend. Default value: ``"MASTER"``. For example:
       ::

          keepalived['vrrp_instance_state'] = "MASTER"

   * - ``keepalived['vrrp_instance_virtual_router_id']``
     - |vrrp_instance_virtual_router_id| This value should be unique within the multicast domain used for |keepalived|. Default value: ``"1"``. For example:
       ::

          keepalived['vrrp_instance_virtual_router_id'] = "1"

   * - ``keepalived['vrrp_unicast_bind']``
     - |vrrp_unicast_bind| To use multicast, leave this value undefined. This value is configured automatically based on settings in |private chef rb|. |opscode_support| Default value: ``<ip address of cluster IP or eth0>``. For example:
       ::

          keepalived['vrrp_unicast_bind'] = nil

   * - ``keepalived['vrrp_unicast_peer']``
     - |vrrp_unicast_peer| To use multicast, leave this value undefined. This value is configured automatically based on settings in |private chef rb|. |opscode_support| Default value: ``<ip address of peer cluster IP or eth0>``. For example:
       ::

          keepalived['vrrp_unicast_peer'] = nil

lb
-----------------------------------------------------
This configuration file has the following settings for the internal load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb_internal['account_port']``
     - Default value: ``9685``. For example:
       ::

          lb_internal['account_port'] = 9685

   * - ``lb_internal['authz_port']``
     - Default value: ``9683``. For example:
       ::

          lb_internal['authz_port'] = 9683

   * - ``lb_internal['chef_port']``
     - Default value: ``9680``. For example:
       ::

          lb_internal['chef_port'] = 9680

   * - ``lb_internal['enable']``
     - Default value: ``true``. For example:
       ::

          lb_internal['enable'] = true

   * - ``lb_internal['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          lb_internal['vip'] = "127.0.0.1"

lb_internal
-----------------------------------------------------
This configuration file has the following settings for load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb['api_fqdn']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          lb['api_fqdn'] = "ubuntu.localdomain"

   * - ``lb['cache_cookbook_files']``
     - Default value: ``false``. For example:
       ::

          lb['cache_cookbook_files'] = false

   * - ``lb['debug']``
     - Default value: ``false``. For example:
       ::

          lb['debug'] = false

   * - ``lb['enable']``
     - Default value: ``true``. For example:
       ::

          lb['enable'] = true

   * - ``lb['upstream']``
     - Default value:
       ::

          {"opscode-chef"=>["127.0.0.1"],
           "opscode-erchef"=>["127.0.0.1"],
           "opscode-account"=>["127.0.0.1"],
           "opscode-webui"=>["127.0.0.1"],
           "opscode-authz"=>["127.0.0.1"],
          "opscode-solr"=>["127.0.0.1"]}``.

       For example:
       ::

          lb['upstream'] = {"opscode-chef"=>["127.0.0.1"],
                            "opscode-erchef"=>["127.0.0.1"],
                            "opscode-account"=>["127.0.0.1"],
                            "opscode-webui"=>["127.0.0.1"],
                            "opscode-authz"=>["127.0.0.1"],
                            "opscode-solr"=>["127.0.0.1"]}

   * - ``lb['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          lb['vip'] = "127.0.0.1"

   * - ``lb['web_ui_fqdn']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          lb['web_ui_fqdn'] = "ubuntu.localdomain"

ldap
-----------------------------------------------------
This configuration file has the following settings for |ldap|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ldap['host']``
     - Name (or IP address) of your LDAP server. Be sure that your Private Chef server can resolve any host names. Default value: ``nil``. For example:
       ::

          ldap['host'] = '1.2.3.4'

   * - ``ldap['port']``
     - The port your LDAP server listens on. The default value of ``389`` is good enough for most installs. This value is always an integer. Default value: ``389``. For example:
       ::

          ldap['port'] = 389

   * - ``ldap['ssl_enabled']``
     - Indicates if Private Chef should make SSL-enabled conenctions to the LDAP server. Be sure SSL is enabled on your LDAP server and ``ldap['port']`` has been updated with the correct value (usually ``636``). Default value: ``false``. For example:
       ::

          ldap['ssl_enabled'] = true

   * - ``ldap['bind_dn']``
     - The distinguished name used to bind to the LDAP server. This is typically, but not necessarily, the administrator or manager user. This user needs to have read access to all LDAP users you hope to authenticate. Leave this value unset if anonymous bind is sufficient. Default value: ``nil``. For example:
       ::

          ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'

   * - ``ldap['bind_password']``
     - The password for the binding user set by ``ldap['bind_password']`` Leave this value unset if anonymous bind is sufficient. Default value: ``nil``. For example:
       ::

          ldap['bind_password'] = 'supersecret'

   * - ``ldap['base_dn']``
     - The LDAP root node, the top entry (starting point) in the directory. Default value: ``nil``. For example:
       ::

          ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'

   * - ``ldap['login_attribute']``
     - The LDAP attribute holding the user's login name. Typically in Active Directory it will be ``sAMAccountName``, while in OpenLDAP it is ``uid``. Default value: ``sAMAccountName``. For example:
       ::

          ldap['login_attribute'] = 'sAMAccountName'

   * - ``ldap['system_adjective']``
     - A descriptive name for your login system that will displayed to users in the Private Chef management console.  If you enter "corporate," for example, the webui will talk about things like "the corporate login server", "corporate login" and "corporate password." Default value: ``AD/LDAP``. For example:
       ::

          ldap['system_adjective'] = 'corporate'

log_retention
-----------------------------------------------------
This configuration file has the following settings for log retention:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_retention['couchdb']``
     - For configuration file retention times on the ``/var/log/opscode/couchdb`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['couchdb'] = 14

   * - ``log_retention['postgresql']``
     - For configuration file retention times on the ``/var/log/opscode/postgresql`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['postgresql'] = 14

   * - ``log_retention['rabbitmq']``
     - For configuration file retention times on the ``/var/log/opscode/rabbitmq`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['rabbitmq'] = 14

   * - ``log_retention['redis']``
     - For configuration file retention times on the ``/var/log/opscode/redis`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['redis'] = 14

   * - ``log_retention['opscode-authz']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-authz`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-authz'] = 14

   * - ``log_retention['opscode-certificate']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-certificate`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-certificate'] = 14

   * - ``log_retention['opscode-account']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-account`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-account'] = 14

   * - ``log_retention['opscode-solr']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-solr`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-solr'] = 14

   * - ``log_retention['opscode-expander']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-expander`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-expander'] = 14

   * - ``log_retention['opscode-org-creator']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-org-creator`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-org-creator'] = 14

   * - ``log_retention['opscode-chef']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-chef`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-chef'] = 14

   * - ``log_retention['opscode-erchef']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-erchef`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-erchef'] = 14

   * - ``log_retention['opscode-webui']``
     - For configuration file retention times on the ``/var/log/opscode/opscode-webui`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['opscode-webui'] = 14

   * - ``log_retention['nagios']``
     - For configuration file retention times on the ``/var/log/opscode/nagios`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['nagios'] = 14

   * - ``log_retention['nginx']``
     - For configuration file retention times on the ``/var/log/opscode/nginx`` directory. And files with mtimes older than this number of days will be deleted.

       Default value: ``14``.

       For example:
       ::

          log_retention['nginx'] = 14

log_rotation
-----------------------------------------------------
This configuration file has the following settings for log rotation:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_rotation``
     - For configuring log rotation on files that are not managed by svlogd or rotated by the application itself.

       Default value:
       ::

          log_rotation["/var/log/opscode/nginx/*.log"] = { "rotate" => 14 }
          log_rotation["/var/log/opscode/php-fpm/php-fpm.log"] = { "rotate" => 14 }
          log_rotation["/var/log/opscode/couchdb/couchdb.log"] = { "rotate" => 14, "owner"=>"opscode", "group"=>"opscode" }
          log_rotation["/var/log/opscode/nagios/nagios.log"] = { "rotate" => 14 }

       For example:
       ::

          log_rotation["/var/log/opscode/nginx/*.log"] = { "rotate" => 7 }
          log_rotation["/var/log/opscode/php-fpm/php-fpm.log"] = { "rotate" => 7 }
          log_rotation["/var/log/opscode/couchdb/couchdb.log"] = { "rotate" => 7, "owner"=>"opscode", "group"=>"opscode" }
          log_rotation["/var/log/opscode/nagios/nagios.log"] = { "rotate" => 7 }

mysql
-----------------------------------------------------
This configuration file has the following settings for |mysql|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``mysql['install_libs']``
     - Default value: ``true``. For example:
       ::

          mysql['install_libs'] = true

   * - ``mysql['sql_password']``
     - Default value: ``"snakepliskin"``. For example:
       ::

          mysql['sql_password'] = "snakepliskin"

   * - ``mysql['sql_user']``
     - Default value: ``"opscode_chef"``. For example:
       ::

          mysql['sql_user'] = "opscode_chef"

   * - ``mysql['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          mysql['vip'] = "127.0.0.1"

nagios
-----------------------------------------------------
This configuration file has the following settings for |nagios|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nagios['admin_email']``
     - Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['admin_email'] = "nobody@example.com"

   * - ``nagios['admin_pager']``
     - Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['admin_pager'] = "nobody@example.com"

   * - ``nagios['admin_password']``
     - Default value: ``"privatechef"``. For example:
       ::

          nagios['admin_password'] = "privatechef"

   * - ``nagios['admin_user']``
     - Default value: ``"nagiosadmin"``. For example:
       ::

          nagios['admin_user'] = "nagiosadmin"

   * - ``nagios['alert_email']``
     - This setting requires ``/usr/bin/mail``. Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['alert_email'] = "nobody@example.com"

   * - ``nagios['debug_level']``
     - Default value: ``0``. For example:
       ::

          nagios['debug_level'] = 0

   * - ``nagios['debug_verbosity']``
     - Default value: ``1``. For example:
       ::

          nagios['debug_verbosity'] = 1

   * - ``nagios['default_host']``
     - Default value:
       ::

          {"check_interval"=>15,
           "retry_interval"=>15,
           "max_check_attempts"=>1,
           "notification_interval"=>300}``.

       For example:
       ::

          nagios['default_host'] = {"check_interval"=>15,
                                    "retry_interval"=>15,
                                    "max_check_attempts"=>1,
                                    "notification_interval"=>300}
   * - ``nagios['default_service']``
     - Default value:
       ::

          {"check_interval"=>60,
           "retry_interval"=>15,
           "max_check_attempts"=>3,
           "notification_interval"=>1200}``.

       For example:
       ::

          nagios['default_service'] = {"check_interval"=>60,
                                       "retry_interval"=>15,
                                       "max_check_attempts"=>3,
                                       "notification_interval"=>1200}

   * - ``nagios['dir']``
     - Default value: ``"/var/opt/opscode/nagios"``. For example:
       ::

          nagios['dir'] = "/var/opt/opscode/nagios"

   * - ``nagios['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          nagios['enable'] = true

   * - ``nagios['fcgiwrap_log_directory']``
     - Default value: ``"/var/log/opscode/fcgiwrap"``. For example:
       ::

          nagios['fcgiwrap_log_directory'] = "/var/log/opscode/fcgiwrap"


   * - ``nagios['fcgiwrap_svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          nagios['fcgiwrap_svlogd_size'] = 1000000


   * - ``nagios['fcgiwrap_svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          nagios['fcgiwrap_svlogd_num'] = 10

   * - ``nagios['fcgiwrap_port']``
     - Default value: ``9670``. For example:
       ::

          nagios['fcgiwrap_port'] = 9670

   * - ``nagios['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          nagios['ha'] = false

   * - ``nagios['hosts']``
     - Default value: ``{"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}``. For example:
       ::

          nagios['hosts'] = {
            "ubuntu"=>{
              "ipaddress"=>"192.168.4.131", "hostgroups"=>[]
            }
          }

   * - ``nagios['interval_length']``
     - Default value: ``1``. For example:
       ::

          nagios['interval_length'] = 1

   * - ``nagios['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/nagios"``. For example:
       ::

          nagios['log_directory'] = "/var/log/opscode/nagios"

   * - ``nagios['php_fpm_log_directory']``
     - Default value: ``"/var/log/opscode/php-fpm"``. For example:
       ::

          nagios['php_fpm_log_directory'] = "/var/log/opscode/php-fpm"

   * - ``nagios['php_fpm_svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          nagios['php_fpm_svlogd_num'] = 10

   * - ``nagios['php_fpm_svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          nagios['php_fpm_svlogd_size'] = 1000000

   * - ``nagios['php_fpm_port']``
     - Default value: ``9000``. For example:
       ::

          nagios['php_fpm_port'] = 9000

   * - ``nagios['port']``
     - Default value: ``9671``. For example:
       ::

          nagios['port'] = 9671

   * - ``nagios['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          nagios['svlogd_num'] = 10

   * - ``nagios['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          nagios['svlogd_size'] = 1000000

nginx
-----------------------------------------------------
This configuration file has the following settings for the |service nginx| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['cache_max_size']``
     - Default value: ``"5000m"``. For example:
       ::

          nginx['cache_max_size'] = "5000m"

   * - ``nginx['client_max_body_size']``
     - Default value: ``"250m"``. For example:
       ::

          nginx['client_max_body_size'] = "250m"

   * - ``nginx['dir']``
     - Default value: ``"/var/opt/opscode/nginx"``. For example:
       ::

          nginx['dir'] = "/var/opt/opscode/nginx"

   * - ``nginx['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          nginx['enable'] = true

   * - ``nginx['gzip']``
     - Default value: ``"on"``. For example:
       ::

          nginx['gzip'] = "on"

   * - ``nginx['gzip_comp_level']``
     - Default value: ``"2"``. For example:
       ::

          nginx['gzip_comp_level'] = "2"

   * - ``nginx['gzip_http_version']``
     - Default value: ``"1.0"``. For example:
       ::

          nginx['gzip_http_version'] = "1.0"

   * - ``nginx['gzip_proxied']``
     - Default value: ``"any"``. For example:
       ::

          nginx['gzip_proxied'] = "any"

   * - ``nginx['gzip_types']``
     - Default Value:
       ::

          ["text/plain",
           "text/css",
           "application/x-javascript",
           "text/xml",
           "application/xml",
           "application/xml+rss",
           "text/javascript"]``.

       For example:
       ::

          nginx['gzip_types'] = ["text/plain",
                                 "text/css",
                                 "application/x-javascript",
                                 "text/xml",
                                 "application/xml",
                                 "application/xml+rss",
                                 "text/javascript"]

   * - ``nginx['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          nginx['ha'] = false

   * - ``nginx['keepalive_timeout']``
     - Default value: ``65``. For example:
       ::

          nginx['keepalive_timeout'] = 65

   * - ``nginx['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/nginx"``. For example:
       ::

          nginx['log_directory'] = "/var/log/opscode/nginx"

   * - ``nginx['sendfile']``
     - Default value: ``"on"``. For example:
       ::

          nginx['sendfile'] = "on"

   * - ``nginx['server_name']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          nginx['server_name'] = "ubuntu.localdomain"

   * - ``nginx['ssl_certificate']``
     - |ssl_certificate| Default value: ``nil``. For example:
       ::

          nginx['ssl_certificate'] = nil


   * - ``nginx['ssl_certificate_key']``
     - |ssl_certificate key| Default value: ``nil``. For example:
       ::

          nginx['ssl_certificate_key'] = nil

   * - ``nginx['ssl_ciphers']``
     - Default value: ``"RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"``. For example:
       ::

          nginx['ssl_ciphers'] = "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!
            kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

   * - ``nginx['ssl_company_name']``
     - Default value: ``"YouCorp"``. For example:
       ::

          nginx['ssl_company_name'] = "YouCorp"

   * - ``nginx['ssl_country_name']``
     - Default value: ``"US"``. For example:
       ::

          nginx['ssl_country_name'] = "US"

   * - ``nginx['ssl_email_address']``
     - Default value: ``"you@example.com"``. For example:
       ::

          nginx['ssl_email_address'] = "you@example.com"

   * - ``nginx['ssl_locality_name']``
     - Default value: ``"Seattle"``. For example:
       ::

          nginx['ssl_locality_name'] = "Seattle"

   * - ``nginx['ssl_organizational_unit_name']``
     - Default value: ``"Operations"``. For example:
       ::

          nginx['ssl_organizational_unit_name'] = "Operations"

   * - ``nginx['enable_non_ssl']``
     - Set this value to true in order to disable the port 80 redirect to 443 and allow for a front end hardware load balancer to do SSL termination of the WebUI and API front end. Default value: ``false``. For example:
       ::

          nginx['enable_non_ssl'] = true

   * - ``nginx['non_ssl_port']``
     - This value can be used to change the port that the WebUI and API bind to for non_ssl connections.  Setting this value to nil will disable this port entirely.  To just enable or disable the redirect to SSL on this port see the nginx['enable_non_ssl'] parameter. Default value: ``80``. For example:
       ::

          nginx['non_ssl_port'] = 80

   * - ``nginx['ssl_port']``
     - Default value: ``443``. For example:
       ::

          nginx['ssl_port'] = 443

   * - ``nginx['ssl_protocols']``
     - Default value: ``"SSLv3 TLSv1"``. For example:
       ::

          nginx['ssl_protocols'] = "SSLv3 TLSv1"

   * - ``nginx['ssl_state_name']``
     - Default value: ``"WA"``. For example:
       ::

          nginx['ssl_state_name'] = "WA"

   * - ``nginx['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          nginx['svlogd_size'] = 1000000

   * - ``nginx['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          nginx['svlogd_num'] = 10

   * - ``nginx['tcp_nodelay']``
     - |use nagle| Default value: ``"on"``. For example:
       ::

          nginx['tcp_nodelay'] = "on"

   * - ``nginx['tcp_nopush']``
     - |use tcpip| Default value: ``"on"``. For example:
       ::

          nginx['tcp_nopush'] = "on"

   * - ``nginx['url']``
     - Default value: ``"https://ubuntu.localdomain"``. For example:
       ::

          nginx['url'] = "https://ubuntu.localdomain"

   * - ``nginx['worker_connections']``
     - |worker_connections| Use with ``nginx['worker_processes']`` to determine the maximum number of allowed clients. Default value: ``10240``. For example:
       ::

          nginx['worker_connections'] = 10240

   * - ``nginx['worker_processes']``
     - |worker_processes| Use with ``nginx['worker_connections']`` to determine the maximum number of allowed clients. Default value: ``4``. For example:
       ::

          nginx['worker_processes'] = 4

   * - ``nginx['x_forwarded_proto']``
     - |x_forwarded_proto| This is the protocol used to connect to |chef private| by a |chef client| or a workstation. Default value: ``"https"``. For example:
       ::

          nginx['x_forwarded_protocol'] = "http"

nrpe
-----------------------------------------------------
This configuration file has the following settings for the |service nrpe| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nrpe['allowed_hosts']``
     - Default value: ``["127.0.0.1", "192.168.4.131"]``. For example:
       ::

          nrpe['allowed_hosts'] = ["127.0.0.1", "192.168.4.131"]

   * - ``nrpe['dir']``
     - Default value: ``"/var/opt/opscode/nrpe"``. For example:
       ::

          nrpe['dir'] = "/var/opt/opscode/nrpe"

   * - ``nrpe['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          nrpe['enable'] = true

   * - ``nrpe['listen']``
     - Default value: ``"192.168.4.131"``. For example:
       ::

          nrpe['listen'] = "192.168.4.131"

   * - ``nrpe['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/nrpe"``. For example:
       ::

          nrpe['log_directory'] = "/var/log/opscode/nrpe"

   * - ``nrpe['port']``
     - |port service| Default value: ``9672``. For example:
       ::

          nrpe['port'] = 9672

   * - ``nrpe['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          nrpe['svlogd_num'] = 10

   * - ``nrpe['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          nrpe['svlogd_size'] = 1000000

opscode_account
-----------------------------------------------------
This configuration file has the following settings for the |service account| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_account['backlog']``
     - Default value: ``1024``. For example:
       ::

          opscode_account['backlog'] = 1024

   * - ``opscode_account['dir']``
     - Default value: ``"/var/opt/opscode/opscode-account"``. For example:
       ::

          opscode_account['dir'] = "/var/opt/opscode/opscode-account"

   * - ``opscode_account['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_account['enable'] = true

   * - ``opscode_account['environment']``
     - Default value: ``"privatechef"``. For example:
       ::

          opscode_account['environment'] = "privatechef"

   * - ``opscode_account['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_account['ha'] = false

   * - ``opscode_account['listen']``
     - Default value: ``"127.0.0.1:9465"``. For example:
       ::

          opscode_account['listen'] = "127.0.0.1:9465"

   * - ``opscode_account['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-account"``. For example:
       ::

          opscode_account['log_directory'] = "/var/log/opscode/opscode-account"

   * - ``opscode_account['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_account['svlogd_size'] = 1000000

   * - ``opscode_account['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_account['svlogd_num'] = 10

   * - ``opscode_account['port']``
     - Default value: ``9465``. For example:
       ::

          opscode_account['port'] = 9465

   * - ``opscode_account['proxy_user']``
     - Default value: ``"pivotal"``. For example:
       ::

          opscode_account['proxy_user'] = "pivotal"

   * - ``opscode_account['session_secret_key']``
     - Default value: ``"change-by-default"``. For example:
       ::

          opscode_account['session_secret_key'] = "change-by-default"

   * - ``opscode_account['tcp_nodelay']``
     - Default value: ``true``. For example:
       ::

          opscode_account['tcp_nodelay'] = true

   * - ``opscode_account['umask']``
     - Default value: ``"0022"``. For example:
       ::

          opscode_account['umask'] = "0022"

   * - ``opscode_account['url']``
     - Default value: ``"http://127.0.0.1:9465"``. For example:
       ::

          opscode_account['url'] = "http://127.0.0.1:9465"

   * - ``opscode_account['validation_client_name']``
     - Default value: ``"chef"``. For example:
       ::

          opscode_account['validation_client_name'] = "chef"

   * - ``opscode_account['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_account['vip'] = "127.0.0.1"

   * - ``opscode_account['worker_processes']``
     - Default value: ``4``. For example:
       ::

          opscode_account['worker_processes'] = 4

   * - ``opscode_account['worker_timeout']``
     - Default value: ``3600``. For example:
       ::

          opscode_account['worker_timeout'] = 3600

opscode_authz
-----------------------------------------------------
This configuration file has the following settings for the |service authz| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_authz['caching']``
     - Default value: ``"enabled"``. For example:
       ::

          opscode_authz['caching'] = "enabled"

   * - ``opscode_authz['dir']``
     - Default value: ``"/var/opt/opscode/opscode-authz"``. For example:
       ::

          opscode_authz['dir'] = "/var/opt/opscode/opscode-authz"

   * - ``opscode_authz['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_authz['enable'] = true

   * - ``opscode_authz['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_authz['ha'] = false

   * - ``opscode_authz['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-authz"``. For example:
       ::

          opscode_authz['log_directory'] = "/var/log/opscode/opscode-authz"

   * - ``opscode_authz['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_authz['svlogd_size'] = 1000000

   * - ``opscode_authz['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_authz['svlogd_num'] = 10

   * - ``opscode_authz['port']``
     - |port service| Default value: ``9463``. For example:
       ::

          opscode_authz['port'] = 9463

   * - ``opscode_authz['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1"``. For example:
       ::

          opscode_authz['vip'] = "127.0.0.1"

opscode_certificate
-----------------------------------------------------
This configuration file has the following settings for the |service certificate| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_certificate['dir']``
     - Default value: ``"/var/opt/opscode/opscode-certificate"``. For example:
       ::

          opscode_certificate['dir'] = "/var/opt/opscode/opscode-certificate"

   * - ``opscode_certificate['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_certificate['enable'] = true

   * - ``opscode_certificate['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_certificate['ha'] = false

   * - ``opscode_certificate['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-certificate"``. For example:
       ::

          opscode_certificate['log_directory'] = "/var/log/opscode/opscode-certificate"

   * - ``opscode_certificate['num_certificates_per_worker']``
     - Default value: ``"50"``. For example:
       ::

          opscode_certificate['num_certificates_per_worker'] = "50"

   * - ``opscode_certificate['num_workers']``
     - Default value: ``"2"``. For example:
       ::

          opscode_certificate['num_workers'] = "2"

   * - ``opscode_certificate['port']``
     - |port service| Default value: ``5140``. For example:
       ::

          opscode_certificate['port'] = 5140

   * - ``opscode_certificate['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_certificate['svlogd_num'] = 10

   * - ``opscode_certificate['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_certificate['svlogd_size'] = 1000000

   * - ``opscode_certificate['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_certificate['vip'] = "127.0.0.1"

opscode_chef
-----------------------------------------------------
This configuration file has the following settings for the |service chef| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_chef['backlog']``
     - Default value: ``1024``. For example:
       ::

          opscode_chef['backlog'] = 1024

   * - ``opscode_chef['checksum_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/checksum"``. For example:
       ::

          opscode_chef['checksum_path'] = "/var/opt/opscode/opscode-chef/checksum"

   * - ``opscode_chef['dir']``
     - Default value: ``"/var/opt/opscode/opscode-chef"``. For example:
       ::

          opscode_chef['dir'] = "/var/opt/opscode/opscode-chef"

   * - ``opscode_chef['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_chef['enable'] = true

   * - ``opscode_chef['environment']``
     - Default value: ``"privatechef"``. For example:
       ::

          opscode_chef['environment'] = "privatechef"

   * - ``opscode_chef['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_chef['ha'] = false

   * - ``opscode_chef['listen']``
     - Default value: ``"127.0.0.1:9460"``. For example:
       ::

          opscode_chef['listen'] = "127.0.0.1:9460"

   * - ``opscode_chef['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-chef"``. For example:
       ::

          opscode_chef['log_directory'] = "/var/log/opscode/opscode-chef"

   * - ``opscode_chef['port']``
     - |port service| Default value: ``9460``. For example:
       ::

          opscode_chef['port'] = 9460

   * - ``opscode_chef['proxy_user']``
     - Default value: ``"pivotal"``. For example:
       ::

          opscode_chef['proxy_user'] = "pivotal"

   * - ``opscode_chef['sandbox_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/sandbox"``. For example:
       ::

          opscode_chef['sandbox_path'] = "/var/opt/opscode/opscode-chef/sandbox"

   * - ``opscode_chef['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_chef['svlogd_num'] = 10

   * - ``opscode_chef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_chef['svlogd_size'] = 1000000

   * - ``opscode_chef['tcp_nodelay']``
     - Default value: ``true``. For example:
       ::

          opscode_chef['tcp_nodelay'] = true

   * - ``opscode_chef['umask']``
     - Default value: ``"0022"``. For example:
       ::

          opscode_chef['umask'] = "0022"

   * - ``opscode_chef['upload_internal_port']``
     - Default value: ``9460``. For example:
       ::

          opscode_chef['upload_internal_port'] = 9460

   * - ``opscode_chef['upload_internal_proto']``
     - Default value: ``"http"``. For example:
       ::

          opscode_chef['upload_internal_proto'] = "http"

   * - ``opscode_chef['upload_internal_vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['upload_internal_vip'] = "127.0.0.1"

   * - ``opscode_chef['upload_port']``
     - Default value: ``9460``. For example:
       ::

          opscode_chef['upload_port'] = 9460

   * - ``opscode_chef['upload_proto']``
     - Default value: ``"http"``. For example:
       ::

          opscode_chef['upload_proto'] = "http"

   * - ``opscode_chef['upload_vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['upload_vip'] = "127.0.0.1"

   * - ``opscode_chef['url']``
     - Default value: ``"http://127.0.0.1:9460"``. For example:
       ::

          opscode_chef['url'] = "http://127.0.0.1:9460"

   * - ``opscode_chef['validation_client_name']``
     - Default value: ``"chef"``. For example:
       ::

          opscode_chef['validation_client_name'] = "chef"

   * - ``opscode_chef['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['vip'] = "127.0.0.1"

   * - ``opscode_chef['web_ui_admin_default_password']``
     - Default value: ``"p@ssw0rd1"``. For example:
       ::

          opscode_chef['web_ui_admin_default_password'] = "p@ssw0rd1"

   * - ``opscode_chef['web_ui_admin_user_name']``
     - Default value: ``"admin"``. For example:
       ::

          opscode_chef['web_ui_admin_user_name'] = "admin"

   * - ``opscode_chef['web_ui_client_name']``
     - Default value: ``"chef-webui"``. For example:
       ::

          opscode_chef['web_ui_client_name'] = "chef-webui"

   * - ``opscode_chef['worker_processes']``
     - Default value: ``4``. For example:
       ::

          opscode_chef['worker_processes'] = 4

   * - ``opscode_chef['worker_timeout']``
     - Default value: ``3600``. For example:
       ::

          opscode_chef['worker_timeout'] = 3600

opscode_erchef
-----------------------------------------------------
This configuration file has the following settings for the |service erchef| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_erchef['auth_skew']``
     - Default value: ``"900"``. For example:
       ::

          opscode_erchef['auth_skew'] = "900"

   * - ``opscode_erchef['bulk_fetch_batch_size']``
     - Default value: ``"5"``. For example:
       ::

          opscode_erchef['bulk_fetch_batch_size'] = "5"

   * - ``opscode_erchef['cache_ttl']``
     - Default value: ``"3600"``. For example:
       ::

          opscode_erchef['cache_ttl'] = "3600"

   * - ``opscode_erchef['couchdb_max_conn']``
     - Default value: ``"100"``. For example:
       ::

          opscode_erchef['couchdb_max_conn'] = "100"

   * - ``opscode_erchef['db_pool_size']``
     - Default value: ``"20"``. For example:
       ::

          opscode_erchef['db_pool_size'] = "20"

   * - ``opscode_erchef['dir']``
     - Default value: ``"/var/opt/opscode/opscode-erchef"``. For example:
       ::

          opscode_erchef['dir'] = "/var/opt/opscode/opscode-erchef"

   * - ``opscode_erchef['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_erchef['enable'] = true

   * - ``opscode_erchef['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_erchef['ha'] = false

   * - ``opscode_erchef['listen']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_erchef['listen'] = "127.0.0.1"

   * - ``opscode_erchef['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-erchef"``. For example:
       ::

          opscode_erchef['log_directory'] = "/var/log/opscode/opscode-erchef"

   * - ``opscode_erchef['max_cache_size']``
     - Default value: ``"10000"``. For example:
       ::

          opscode_erchef['max_cache_size'] = "10000"

   * - ``opscode_erchef['port']``
     - |port service| Default value: ``8000``. For example:
       ::

          opscode_erchef['port'] = 8000

   * - ``opscode_erchef['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_erchef['svlogd_num'] = 10

   * - ``opscode_erchef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_erchef['svlogd_size'] = 1000000

   * - ``opscode_erchef['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_erchef['vip'] = "127.0.0.1"

opscode_expander
-----------------------------------------------------
This configuration file has the following settings for the |service expander| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_expander['consumer_id']``
     - Default value: ``"default"``. For example:
       ::

          opscode_expander['consumer_id'] = "default"

   * - ``opscode_expander['dir']``
     - Default value: ``"/var/opt/opscode/opscode-expander"``. For example:
       ::

          opscode_expander['dir'] = "/var/opt/opscode/opscode-expander"

   * - ``opscode_expander['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_expander['enable'] = true

   * - ``opscode_expander['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_expander['ha'] = false

   * - ``opscode_expander['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-expander"``. For example:
       ::

          opscode_expander['log_directory'] = "/var/log/opscode/opscode-expander"

   * - ``opscode_expander['nodes']``
     - Default value: ``2``. For example:
       ::

          opscode_expander['nodes'] = 2

   * - ``opscode_expander['reindexer_log_directory']``
     - Default value: ``"/var/log/opscode/opscode-expander-reindexer"``. For example:
       ::

          opscode_expander['reindexer_log_directory'] =
            "/var/log/opscode/opscode-expander-reindexer"

   * - ``opscode_expander['reindexer_svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_expander['reindexer_svlogd_size'] = 1000000

   * - ``opscode_expander['redindexer_svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_expander['reindexer_svlogd_num'] = 10

   * - ``opscode_expander['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_expander['svlogd_num'] = 10

   * - ``opscode_expander['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_expander['svlogd_size'] = 1000000

opscode_org_creator
-----------------------------------------------------
This configuration file has the following settings for the |service orgcreator| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_org_creator['create_splay_ms']``
     - Default value: ``25000``. For example:
       ::

          opscode_org_creator['create_splay_ms'] = 25000

   * - ``opscode_org_creator['create_wait_ms']``
     - Default value: ``30000``. For example:
       ::

          opscode_org_creator['create_wait_ms'] = 30000

   * - ``opscode_org_creator['dir']``
     - Default value: ``"/var/opt/opscode/opscode-org-creator"``. For example:
       ::

          opscode_org_creator['dir'] = "/var/opt/opscode/opscode-org-creator"

   * - ``opscode_org_creator['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_org_creator['enable'] = true

   * - ``opscode_org_creator['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_org_creator['ha'] = false

   * - ``opscode_org_creator['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-org-creator"``. For example:
       ::

          opscode_org_creator['log_directory'] =
            "/var/log/opscode/opscode-org-creator"

   * - ``opscode_org_creator['max_workers']``
     - Default value: ``1``. For example:
       ::

          opscode_org_creator['max_workers'] = 1

   * - ``opscode_org_creator['port']``
     - |port service| Default value: ``4369``. For example:
       ::

          opscode_org_creator['port'] = 4369

   * - ``opscode_org_creator['ready_org_depth']``
     - Default value: ``10``. For example:
       ::

          opscode_org_creator['ready_org_depth'] = 10

   * - ``opscode_org_creator['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_org_creator['svlogd_num'] = 10

   * - ``opscode_org_creator['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_org_creator['svlogd_size'] = 1000000

opscode_solr
-----------------------------------------------------
This configuration file has the following settings for the |service solr| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_solr['commit_interval']``
     - Default value: ``60000``. For example:
       ::

          opscode_solr['commit_interval'] = 60000

   * - ``opscode_solr['data_dir']``
     - Default value: ``"/var/opt/opscode/opscode-solr/data"``. For example:
       ::

          opscode_solr['data_dir'] = "/var/opt/opscode/opscode-solr/data"

   * - ``opscode_solr['dir']``
     - Default value: ``"/var/opt/opscode/opscode-solr"``. For example:
       ::

          opscode_solr['dir'] = "/var/opt/opscode/opscode-solr"

   * - ``opscode_solr['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_solr['enable'] = true

   * - ``opscode_solr['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_solr['ha'] = false

   * - ``opscode_solr['heap_size']``
     - |heap_size solr| The default value should work for many organizations with fewer than 25 nodes. For an organization with several hundred nodes, the amount of memory that is required often exceeds 3GB. Default value: ``"256M"``. For example:
       ::

          opscode_solr['heap_size'] = "256M"

   * - ``opscode_solr['ip_address']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_solr['ip_address'] = "127.0.0.1"

   * - ``opscode_solr['java_opts']``
     - Default value: ``""``. For example:
       ::

          opscode_solr['java_opts'] = ""

   * - ``opscode_solr['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-solr"``. For example:
       ::

          opscode_solr['log_directory'] = "/var/log/opscode/opscode-solr"

   * - ``opscode_solr['max_commit_docs']``
     - Default value: ``1000``. For example:
       ::

          opscode_solr['max_commit_docs'] = 1000

   * - ``opscode_solr['max_field_length']``
     - Default value: ``100000``. For example:
       ::

          opscode_solr['max_field_length'] = 100000

   * - ``opscode_solr['max_merge_docs']``
     - Default value: ``2147483647``. For example:
       ::

          opscode_solr['max_merge_docs'] = 2147483647

   * - ``opscode_solr['merge_factor']``
     - Default value: ``100``. For example:
       ::

          opscode_solr['merge_factor'] = 100

   * - ``opscode_solr['poll_seconds']``
     - Default value: ``20``. For example:
       ::

          opscode_solr['poll_seconds'] = 20

   * - ``opscode_solr['port']``
     - |port service| Default value: ``8983``. For example:
       ::

          opscode_solr['port'] = 8983

   * - ``opscode_solr['ram_buffer_size']``
     - Default value: ``200``. For example:
       ::

          opscode_solr['ram_buffer_size'] = 200

   * - ``opscode_solr['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_solr['svlogd_num'] = 10

   * - ``opscode_solr['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_solr['svlogd_size'] = 1000000

   * - ``opscode_solr['url']``
     - Default value: ``"http://localhost:8983"``. For example:
       ::

          opscode_solr['url'] = "http://localhost:8983"

   * - ``opscode_solr['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_solr['vip'] = "127.0.0.1"

opscode_webui
-----------------------------------------------------
This configuration file has the following settings for the |service webui| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_webui['backlog']``
     - Default value: ``1024``. For example:
       ::

          opscode_webui['backlog'] = 1024

   * - ``opscode_webui['cookie_domain']``
     - Default value: ``"all"``. For example:
       ::

          opscode_webui['cookie_domain'] = "all"

   * - ``opscode_webui['cookie_secret']``
     - Default value: ``"47b3b8d95dea455baf32155e95d1e64e"``. For example:
       ::

          opscode_webui['cookie_secret'] = "47b3b8d95dea455baf32155e95d1e64e"

   * - ``opscode_webui['dir']``
     - Default value: ``"/var/opt/opscode/opscode-webui"``. For example:
       ::

          opscode_webui['dir'] = "/var/opt/opscode/opscode-webui"

   * - ``opscode_webui['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_webui['enable'] = true

   * - ``opscode_webui['environment']``
     - Default value: ``"privatechef"``. For example:
       ::

          opscode_webui['environment'] = "privatechef"

   * - ``opscode_webui['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_webui['ha'] = false

   * - ``opscode_webui['listen']``
     - Default value: ``"127.0.0.1:9462"``. For example:
       ::

          opscode_webui['listen'] = "127.0.0.1:9462"

   * - ``opscode_webui['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-webui"``. For example:
       ::

          opscode_webui['log_directory'] = "/var/log/opscode/opscode-webui"

   * - ``opscode_webui['port']``
     - |port service| Default value: ``9462``. For example:
       ::

          opscode_webui['port'] = 9462

   * - ``opscode_webui['session_key']``
     - Default value: ``"_sandbox_session"``. For example:
       ::

          opscode_webui['session_key'] = "_sandbox_session"

   * - ``opscode_webui['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_webui['svlogd_num'] = 10

   * - ``opscode_webui['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_webui['svlogd_size'] = 1000000

   * - ``opscode_webui['tcp_nodelay']``
     - Default value: ``true``. For example:
       ::

          opscode_webui['tcp_nodelay'] = true

   * - ``opscode_webui['umask']``
     - |umask| Default value: ``"0022"``. For example:
       ::

          opscode_webui['umask'] = "0022"

   * - ``opscode_webui['url']``
     - Default value: ``"http://127.0.0.1:9462"``. For example:
       ::

          opscode_webui['url'] = "http://127.0.0.1:9462"

   * - ``opscode_webui['validation_client_name']``
     - |webui validation_client_name| Default value: ``"chef"``. For example:
       ::

          opscode_webui['validation_client_name'] = "chef"

   * - ``opscode_webui['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_webui['vip'] = "127.0.0.1"

   * - ``opscode_webui['worker_processes']``
     - |worker_processes| Default value: ``4``. For example:
       ::

          opscode_webui['worker_processes'] = 4

   * - ``opscode_webui['worker_timeout']``
     - |timeout worker| Default value: ``3600``. For example:
       ::

          opscode_webui['worker_timeout'] = 3600

postgresql
-----------------------------------------------------
This configuration file has the following settings for the |service postgresql| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['data_dir']``
     - |directory generic_data| Default value: ``"/var/opt/opscode/postgresql/data"``. For example:
       ::

          postgresql['data_dir'] = "/var/opt/opscode/postgresql/data"

   * - ``postgresql['dir']``
     - |directory generic| Default value: ``"/var/opt/opscode/postgresql"``. For example:
       ::

          postgresql['dir'] = "/var/opt/opscode/postgresql"

   * - ``postgresql['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          postgresql['enable'] = true


   * - ``postgresql['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          postgresql['ha'] = false

   * - ``postgresql['home']``
     - |directory postgresql_home| Default value: ``"/opt/opscode/embedded"``. For example:
       ::

          postgresql['home'] = "/opt/opscode/embedded"

   * - ``postgresql['listen_address']``
     - |port service| Default value: ``"localhost"``. For example:
       ::

          postgresql['listen_address'] = "localhost"


   * - ``postgresql['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/postgresql"``. For example:
       ::

          postgresql['log_directory'] = "/var/log/opscode/postgresql"

   * - ``postgresql['max_connections']``
     - |max_connections| Default value: ``200``. For example:
       ::

          postgresql['max_connections'] = 200

   * - ``postgresql['md5_auth_cidr_addresses']``
     - Default value: ``[]``. For example:
       ::

          postgresql['md5_auth_cidr_addresses'] = []

   * - ``postgresql['port']``
     - |port service| Default value: ``5432``. For example:
       ::

          postgresql['port'] = 5432

   * - ``postgresql['shell']``
     - Default value: ``"/bin/sh"``. For example:
       ::

          postgresql['shell'] = "/bin/sh"

   * - ``postgresql['shmall']``
     - Default value: ``4194304``. For example:
       ::

          postgresql['shmall'] = 4194304

   * - ``postgresql['shmmax']``
     - Default value: ``17179869184``. For example:
       ::

          postgresql['shmmax'] = 17179869184

   * - ``postgresql['sql_password']``
     - Default value: ``"snakepliskin"``. For example:
       ::

          postgresql['sql_password'] = "snakepliskin"

   * - ``postgresql['sql_ro_password']``
     - Default value: ``"shmunzeltazzen"``. For example:
       ::

          postgresql['sql_ro_password'] = "shmunzeltazzen"

   * - ``postgresql['sql_ro_user']``
     - Default value: ``"opscode_chef_ro"``. For example:
       ::

          postgresql['sql_ro_user'] = "opscode_chef_ro"

   * - ``postgresql['sql_user']``
     - Default value: ``"opscode_chef"``. For example:
       ::

          postgresql['sql_user'] = "opscode_chef"

   * - ``postgresql['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          postgresql['svlogd_num'] = 10

   * - ``postgresql['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          postgresql['svlogd_size'] = 1000000

   * - ``postgresql['trust_auth_cidr_addresses']``
     - Default value: ``["127.0.0.1/32", "::1/128"]``. For example:
       ::

          postgresql['trust_auth_cidr_addresses'] = ["127.0.0.1/32", "::1/128"]

   * - ``postgresql['username']``
     - |name user postgresql| Default value: ``"opscode-pgsql"``. For example:
       ::

          postgresql['username'] = "opscode-pgsql"

   * - ``postgresql['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          postgresql['vip'] = "127.0.0.1"

rabbitmq
-----------------------------------------------------
This configuration file has the following settings for the |service rabbitmq| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``rabbitmq['consumer_id']``
     - Default value: ``"hotsauce"``. For example:
       ::

          rabbitmq['consumer_id'] = "hotsauce"

   * - ``rabbitmq['data_dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq/db"``. For example:
       ::

          rabbitmq['data_dir'] = "/var/opt/opscode/rabbitmq/db"

   * - ``rabbitmq['dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq"``. For example:
       ::

          rabbitmq['dir'] = "/var/opt/opscode/rabbitmq"

   * - ``rabbitmq['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          rabbitmq['enable'] = true

   * - ``rabbitmq['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          rabbitmq['ha'] = false

   * - ``rabbitmq['jobs_password']``
     - Default value: ``"workcomplete"``. For example:
       ::

          rabbitmq['jobs_password'] = "workcomplete"

   * - ``rabbitmq['jobs_user']``
     - Default value: ``"jobs"``. For example:
       ::

          rabbitmq['jobs_user'] = "jobs"

   * - ``rabbitmq['jobs_vhost']``
     - Default value: ``"/jobs"``. For example:
       ::

          rabbitmq['jobs_vhost'] = "/jobs"

   * - ``rabbitmq['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/rabbitmq"``. For example:
       ::

          rabbitmq['log_directory'] = "/var/log/opscode/rabbitmq"

   * - ``rabbitmq['node_ip_address']``
     - |ip_address rabbitmq| Default value: ``"127.0.0.1"``. For example:
       ::

          rabbitmq['node_ip_address'] = "127.0.0.1"

   * - ``rabbitmq['node_port']``
     - |port service| Default value: ``"5672"``. For example:
       ::

          rabbitmq['node_port'] = "5672"

   * - ``rabbitmq['nodename']``
     - |name node| Default value: ``"rabbit@localhost"``. For example:
       ::

          rabbitmq['nodename'] = "rabbit@localhost"

   * - ``rabbitmq['password']``
     - |password rabbitmq| Default value: ``"chefrocks"``. For example:
       ::

          rabbitmq['password'] = "chefrocks"

   * - ``rabbitmq['reindexer_vhost']``
     - Default value: ``"/reindexer"``. For example:
       ::

          rabbitmq['reindexer_vhost'] = "/reindexer"

   * - ``rabbitmq['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          rabbitmq['svlogd_num'] = 10

   * - ``rabbitmq['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          rabbitmq['svlogd_size'] = 1000000

   * - ``rabbitmq['user']``
     - Default value: ``"chef"``. For example:
       ::

          rabbitmq['user'] = "chef"

   * - ``rabbitmq['vhost']``
     - Default value: ``"/chef"``. For example:
       ::

          rabbitmq['vhost'] = "/chef"

   * - ``rabbitmq['vip']``
     - |ip_address virtual| sDefault value: ``"127.0.0.1"``. For example:
       ::

          rabbitmq['vip'] = "127.0.0.1"

redis
-----------------------------------------------------
This configuration file has the following settings for the |service redis| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``redis['appendfsync']``
     - |appendfsync| Default value: ``"everysec"``. For example:
       ::

          redis['appendfsync'] = "everysec"
   * - ``redis['appendonly']``
     - |appendonly| Set to ``yes`` to dump data to an append-only log file. Default value: ``"no"``. For example:
       ::

          redis['appendonly'] = "no"

   * - ``redis['bind']``
     - |bind redis| Default value: ``"127.0.0.1"``. For example:
       ::

          redis['bind'] = "127.0.0.1"

   * - ``redis['databases']``
     - |database_quantity| Default value: ``"16"``. For example:
       ::

          redis['databases'] = "16"

   * - ``redis['dir']``
     - |directory redis| Default value: ``"/var/opt/opscode/redis"``. For example:
       ::

          redis['dir'] = "/var/opt/opscode/redis"

   * - ``redis['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          redis['enable'] = true

   * - ``redis['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          redis['ha'] = false

   * - ``redis['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/redis"``. For example:
       ::

          redis['log_directory'] = "/var/log/opscode/redis"

   * - ``redis['loglevel']``
     - Default value: ``"notice"``. For example:
       ::

          redis['loglevel'] = "notice"

   * - ``redis['maxmemory']``
     - |memory maximum_redis| Default value: ``"1g"``. For example:
       ::

          redis['maxmemory'] = "1g"

   * - ``redis['maxmemory_policy']``
     - |memory maximum_policy_redis| Default value: ``"volatile-lru"``. For example:
       ::

          redis['maxmemory_policy'] = "volatile-lru"

   * - ``redis['port']``
     - |port service| Default value: ``"6379"``. For example:
       ::

          redis['port'] = "6379"

   * - ``redis['root']``
     - |root redis| Default value: ``"/var/opt/opscode/redis"``. For example:
       ::

          redis['root'] = "/var/opt/opscode/redis"

   * - ``redis['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          redis['svlogd_num'] = 10

   * - ``redis['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          redis['svlogd_size'] = 1000000

   * - ``redis['timeout']``
     - |timeout redis| Default value: ``"300"``. For example:
       ::

          redis['timeout'] = "300"

   * - ``redis['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          redis['vip'] = "127.0.0.1"

   * - ``redis['vm']``
     - Default value:
       ::

          {"enabled"=>"no",
           "max_memory"=>"0",
           "page_size"=>"32",
           "pages"=>"134217728",
           "max_threads"=>"4"}

       For example:
       ::

          redis['vm'] = {"enabled"=>"no",
                         "max_memory"=>"0",
                         "page_size"=>"32",
                         "pages"=>"134217728",
                         "max_threads"=>"4"}

user
-----------------------------------------------------
This configuration file has the following settings for users:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``user['home']``
     - Default value: ``"/opt/opscode/embedded"``. For example:
       ::

          user['home'] = "/opt/opscode/embedded"

   * - ``user['shell']``
     - Default value: ``"/bin/sh"``. For example:
       ::

          user['shell'] = "/bin/sh"

   * - ``user['username']``
     - Default value: ``"opscode"``. For example:
       ::

          user['username'] = "opscode"
