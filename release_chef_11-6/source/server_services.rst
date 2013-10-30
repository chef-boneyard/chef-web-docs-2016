=====================================================
Services
=====================================================

.. include:: ../../includes_server_services/includes_server_services.rst

Service Subcommands
=====================================================
|chef server oec| has a built in process supervisor, which ensures that all of the required services are in the appropriate state at any given time. The supervisor starts two processes per service.

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


List of Services
=====================================================
The following services are part of |chef server oec|:

* bifrost
* bookshelf
* couchdb
* keepalived
* nginx
* opscode-account
* opscode-certificate
* opscode-erchef
* opscode-expander
* opscode-expander-reindexer
* opscode-org-creator
* opscode-solr
* opscode-webui
* postgresql
* rabbitmq
* redis


bifrost
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_bifrost.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bifrost_tail.rst


bookshelf
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_bookshelf.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_bookshelf_tail.rst


couchdb
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_couchdb.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_couchdb_tail.rst


keepalived
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_keepalived.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_keepalived_tail.rst



nginx
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_nginx.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_nginx_tail.rst


opscode-account
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_account.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_account_tail.rst


opscode-certificate
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_certificate.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_certificate_tail.rst


opscode-erchef
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_erchef.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_erchef_tail.rst


opscode-expander
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_expander.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_expander_tail.rst


opscode-expander-reindexer
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_reindexer.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_reindexer_tail.rst


opscode-solr
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_solr.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_solr_tail.rst


opscode-webui
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_webui.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_tail.rst


postgresql
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_postgresql.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_postgresql_tail.rst


rabbitmq
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_rabbitmq.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_rabbitmq_tail.rst


redis
-----------------------------------------------------
.. include:: ../../includes_server_services/includes_server_services_redis.rst

status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_status.rst

start
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_start.rst

stop
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_stop.rst

restart
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_restart.rst

kill
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_kill.rst

run once
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_redis_run_once.rst

tail
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_server_services/step_server_services_webui_tail.rst