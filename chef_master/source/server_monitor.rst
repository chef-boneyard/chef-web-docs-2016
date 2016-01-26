=====================================================
Monitor
=====================================================

.. include:: ../../includes_server_monitor/includes_server_monitor.rst

Top Priority Monitoring Focus
=====================================================

The following items are the top priority for monitoring.
If you monitor no other aspect of your Chef Server systems,
these are the two items to track. In our experience,
running out of disk space is the number one cause of
Chef Server failure.

Disks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_disk.rst

HA Specific
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_ha.rst

Application Checks
=====================================================
.. include:: ../../includes_server_monitor/includes_server_monitor_application.rst

|drbd|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_drbd.rst

|erlang|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_erlang.rst

``eper`` tools
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_erlang_eper.rst

|nginx|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_nginx.rst

|postgresql|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_postgresql.rst

|rabbitmq|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_rabbitmq.rst

|redis|
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application_redis.rst

|apache solr|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_solr.rst

System Checks
=====================================================
.. include:: ../../includes_server_monitor/includes_server_monitor_system.rst

ha-status
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_ha_status.rst

opscode-authz
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_authz.rst

opscode-erchef
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_erchef.rst

opscode-expander
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander.rst

Search Indexes
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander_search.rst

|opscode expander ctl|
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_options.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_example.rst

Nodes, Workstations
=====================================================
.. include:: ../../includes_server_monitor/includes_server_monitor_system_client.rst

