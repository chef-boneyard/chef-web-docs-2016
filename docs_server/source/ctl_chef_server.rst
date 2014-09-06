.. THIS PAGE IS IDENTICAL TO docs.getchef.com/ctl_private_chef.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
|chef server ctl| (executable)
=====================================================

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server.rst

backup-recover
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_backup_recover.rst

cleanse
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_cleanse.rst

gather-logs
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_gather_logs.rst

ha-status
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_ha_status.rst

help
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_help.rst

master-recover
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_master_recover.rst

password
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_password.rst

reconfigure
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_reconfigure.rst

show-config
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_show_config.rst

uninstall
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_uninstall.rst

upgrade
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_syntax.rst

**Options**

.. note:: Options for the ``upgrade`` subcommand may only be used when upgrading from |chef server osc| to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_options.rst

chef12-upgrade-data-transform
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_data_transform.rst

**Options**

.. note:: Options for the ``chef12-upgrade-data-transform`` subcommand may only be used when upgrading from |chef server osc| to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_data_transform_options.rst

chef12-upgrade-download
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_download.rst

**Options**

.. note:: Options for the ``chef12-upgrade-download`` subcommand may only be used when upgrading from |chef server osc| to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_download_options.rst

chef12-upgrade-upload
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_upload.rst

**Options**

.. note:: Options for the ``chef12-upgrade-upload`` subcommand may only be used when upgrading from |chef server osc| to |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_upgrade_upload_options.rst




Service Subcommands
=====================================================
The |chef server| has a built in process supervisor, which ensures that all of the required services are in the appropriate state at any given time. The supervisor starts two processes per service.

hup
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_hup.rst

int
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_int.rst

kill
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_kill.rst

once
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_once.rst

restart
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_restart.rst

service-list
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_service_list.rst

start
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_start.rst

status
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_status.rst

High Availability
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_status_ha.rst

Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_status_logs.rst

stop
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_stop.rst

tail
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_tail.rst

term
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_term.rst

