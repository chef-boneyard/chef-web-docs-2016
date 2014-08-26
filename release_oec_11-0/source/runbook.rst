.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.0

=====================================================
Runbook
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

.. include:: ../../includes_chef_server/includes_chef_server_component_erchef_background.rst

The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another.

.. image:: ../../images_old/server_components_oec.png

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - Bookshelf
     - .. include:: ../../includes_chef_server/includes_chef_server_component_bookshelf.rst

       All cookbooks are stored in a dedicated repository.
   * - WebUI
     - .. include:: ../../includes_chef_server/includes_chef_server_component_webui.rst
   * - Erchef
     - .. include:: ../../includes_chef_server/includes_chef_server_component_erchef.rst
   * - Message Queues
     - Messages are sent to the Search Index using the following components:
       
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_rabbitmq.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_expander.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_solr.rst

       All messages are added to a dedicated search index repository.
   * - Nginx
     - .. include:: ../../includes_chef_server/includes_chef_server_component_nginx.rst
   * - PostgreSQL
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst

The following sections detail how to monitor the server, manage log files, manage services, manage firewalls and ports, configure SSL, tune server configuration settings, and backup and restore data.

Deployment Scenarios
=====================================================
There are several configuration options for the |chef server oec| server: hosted by |company_name|, all on a single machine (standalone), multiple machines and a scaled front end, multiple machines and a scaled back end, or multiple machines with both scaled front and back ends.

Standalone
-----------------------------------------------------
A standalone deployment is a great way to test out |chef server oec|. All of the components and services are deployed on a single piece of hardware, so the installation is relatively straightforward. For a simple test deployment, use any machine--including a virtual machine--that meets the minimum system requirements.

A standalone deployment can also be more than just a testing deployment. Many organizations use the standalone configuration in production environments. If your organization expects to have only a few hundred nodes and doesn't anticipate the need to scale horizontally or vertically, then this configuration may be the best option. Depending on the hardware on which |chef server oec| is installed, a standalone deployment can easily handle organization sizes well beyond several thousand nodes, so there is room for growth as long as the hardware on which the server is installed can support that growth.

.. image:: ../../images_old/oec_server_deploy_standalone.png

where no additional steps are taken for high availability. In some organizations, this approach is fine. It all depends on the capabilities of the hardware on which the services are installed and what the long-term growth expectations are for the number of nodes that will need to be managed over time. If the need to add any type of high availability arises (be it front end load balancing or back end failover), that type of change would likely come with some disruption while the switch over to new hardware and software reconfiguration takes place.

Scaled Front End
-----------------------------------------------------
A scaled front end deployment is ideal for organizations that know they will need to plan for high availability, but also have internal requirements for back end high availability that are different from the scaled back end scenario. This is fine, of course. |chef server oec| can be configured for back end high availability in many different ways. This scenario recognizes that the back end high availability decisions are your own, but that deploying for front end high availability is also a requirement.

.. image:: ../../images_old/oec_server_deploy_fe.png

where:

* The front end servers handle requests from the |chef client| (where the requests are made by the |chef client| as it configures a node), from workstations (where the request is typically in the form of a |knife| command), and by users who log on to the |chef server| web user interface. Load balancing is typically configured for the front end servers by using a combination of hardware (such as |f5| or |netscalar|), |ssl| off-loading, and a round-robin load balancing algorithm.
* The back end server is shown as a single machine. In some organizations, a single back end machine is fine, but more commonly, this scenario represents an organization that has different requirements from the "asynchronous block level replication of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|" approach that is the default scenario described in the documentation for |chef server oec|. If a different approach is needed, please consult with |company_name| support to help ensure that all of the critical configuration requirements are understood.

Scaled Back End
-----------------------------------------------------
A scaled back end deployment is the most common starting point for high availability, with regard to |chef server oec|. It is easier to scale out and load balance the front end servers later, but it's essential to set up the back end servers for primary/secondary failover, system backups, and so on, as part of the initial configuration. Most |chef server oec| customers choose this configuration.

.. image:: ../../images_old/oec_server_deploy_be.png

where:

* The front end server is shown as a single machine. Requests to the front end are done via the |api chef server| and are made by the |chef client|, |knife|, and users (when they log on to the |webui| web user interface). The need for load balancing the front end servers depends on the number of requests that will be made to the |chef server| and on the capabilities of the hardware on which the front end services are installed. In many organizations, a single front end machine is fine and the decision to add a machine (and add load balancing) can be made later and with minimal disruption.
* The back end servers handle data storage and retrieval. Failover is achieved on the back end servers using a combination of `asynchronous block level replication <http://www.drbd.org/users-guide/s-prepare-network.html>`_ of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|.

Scaled Front and Back Ends
-----------------------------------------------------
A scaled front and back end deployment is for those organizations that know they need high availability right from the start.

.. image:: ../../images_old/oec_server_deploy_febe.png

where:

* The front end servers handle requests from the |chef client| (where the requests are made by the |chef client| as it configures a node), from workstations (where the request is typically in the form of a |knife| command), and by users who log on to the |chef server| web user interface. Load balancing is typically configured for the front end servers by using a combination of hardware (such as |f5| or |netscalar|), |ssl| off-loading, and a round-robin load balancing algorithm.
* The back end servers handle data storage and retrieval. Failover is achieved on the back end servers using a combination of asynchronous block level replication of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|.

Monitoring
=====================================================
.. include:: ../../includes_server_monitor/includes_server_monitor.rst

Application Checks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application.rst

|drbd|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_drbd.rst

|erlang|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_erlang.rst

|nginx|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_nginx.rst

|postgresql|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_postgresql.rst

|rabbitmq|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_rabbitmq.rst

|redis|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_redis.rst

System Checks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system.rst

ha-status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_ha_status.rst

opscode-authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_authz.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander.rst

**Search Indexes**

.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander_search.rst

**opscode-expanderctl**

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_options.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_example.rst

Nodes, Workstations
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_client.rst

Disks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_disk.rst






Log Files
=====================================================

.. include:: ../../includes_server_logs/includes_server_logs.rst

View Log Files
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_view.rst

tail Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

.. include:: ../../step_server_services/step_server_services_general_tail.rst

Supervisor
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_type_supervisor.rst

nginx, access
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_nginx_log_access.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_account_log_current.rst

opscode-erchef, current
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_erchef_log_current.rst

opscode-erchef, erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_erchef_log_erchef.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_webui_log_current.rst

Application
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_type_application.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_nginx.rst

.. include:: ../../step_server_services/step_server_services_nginx_tail.rst

**Read Log Files**

.. include:: ../../includes_server_logs/includes_server_logs_nginx_read_logs.rst







Firewalls and Ports
=====================================================

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports.rst

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_listening.rst

Standalone
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_standalone.rst

Front End
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_fe.rst

Back End
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_be.rst






Services
=====================================================
The following subcommands are built into the |private chef ctl| command line tool.

hup
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_hup.rst

int
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_int.rst

kill
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_kill.rst

once
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_once.rst

restart
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_restart.rst

service-list
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_service_list.rst

start
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_start.rst

status
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status.rst

High Availability
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_ha.rst

Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_logs.rst

stop
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_stop.rst

tail
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

term
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_term.rst





SSL Configuration
=====================================================

.. include:: ../../includes_server_security/includes_server_security_ssl.rst

.. warning:: The |fqdn| for the |chef server| should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters.

.. warning:: By default, the |chef server| uses the |fqdn| to determine the common name (``CN``). If the |fqdn| of the |chef server| is longer than 64 characters, the ``reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Custom Certificates
-----------------------------------------------------
.. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst

Regenerate Certificates
-----------------------------------------------------
.. include:: ../../step_server_security/step_server_security_ssl_regenerate_certificates.rst

|chef client| Settings
-----------------------------------------------------
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst








Server Tuning
=====================================================

.. include:: ../../includes_server_tuning/includes_server_tuning.rst

.. note:: |note enterprise_chef_tuning|


Customize the Config File
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise.rst

Use Conditions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_config/step_config_add_condition.rst


Recommended Settings
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_general.rst

Optional Settings
-----------------------------------------------------
The following settings are often used to for performance tuning of |chef server oec| in larger installations.

.. note:: When changes are made to the |enterprise rb| file the |chef server oec| must be reconfigured by running the ``private-chef-ctl reconfigure`` command.

bookshelf
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_bookshelf.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_account.rst

opscode-chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_chef.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_expander.rst

opscode-solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_solr.rst

**Update Frequency**

.. include:: ../../includes_server_tuning/includes_server_tuning_solr_update_frequency.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_webui.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_postgresql.rst






Backup and Restore
=====================================================
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore.rst

High Availability
-----------------------------------------------------
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_ha.rst

Required Directories
-----------------------------------------------------
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations.rst

Backup
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations_backup.rst

Restore
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations_restore.rst




Troubleshooting
=====================================================

