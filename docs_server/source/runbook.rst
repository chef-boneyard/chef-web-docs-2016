=====================================================
Runbook
=====================================================

xxxxx

xxxxx
=====================================================
xxxxx

xxxxx
-----------------------------------------------------
xxxxx

xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx

**xxxxx**






xxxxx
=====================================================
xxxxx

xxxxx
-----------------------------------------------------
xxxxx





Monitoring
=====================================================
includes_server_monitor

General Status
-----------------------------------------------------
xxxxx

High Availability
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx

|rabbitmq| Queues
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_rabbitmq.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander.rst

|redis|
-----------------------------------------------------
xxxxx

|api chef server|
-----------------------------------------------------
xxxxx

Authorization
-----------------------------------------------------
xxxxx

Disk Sizes
-----------------------------------------------------
xxxxx

Ports
-----------------------------------------------------
xxxxx

oc_bifrost
-----------------------------------------------------
xxxxx






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
=====================================================
.. include:: ../../includes_server_logs/includes_server_logs_view.rst

tail Log Files
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

.. include:: ../../step_server_services/step_server_services_general_tail.rst

Supervisor
=====================================================
.. include:: ../../includes_server_logs/includes_server_logs_type_supervisor.rst

nginx, access
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_nginx_log_access.rst

opscode-account
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_account_log_current.rst

opscode-erchef, current
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_erchef_log_current.rst

opscode-erchef, erchef
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_erchef_log_erchef.rst

opscode-webui
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_webui_log_current.rst

Application
=====================================================
.. include:: ../../includes_server_logs/includes_server_logs_type_application.rst

nginx
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_nginx.rst

.. include:: ../../step_server_services/step_server_services_nginx_tail.rst

Read Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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
=====================================================
.. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst

Regenerate Certificates
=====================================================
.. include:: ../../step_server_security/step_server_security_ssl_regenerate_certificates.rst

|chef client| Settings
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst