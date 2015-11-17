.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``rabbitmq``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``rabbitmq['actions_exchange']``
     - The name of the exchange to which |chef actions| publishes actions data. Default value: ``'actions'``.
   * - ``rabbitmq['actions_password']``
     - The password for the ``actions_user``. Default value: ``'changeme'``.
   * - ``rabbitmq['actions_user']``
     - The user with permission to publish actions data. Default value: ``'actions'``.
   * - ``rabbitmq['actions_vhost']``
     - The virtual host to which |chef actions| publishes actions data. Default value: ``'/analytics'``.
   * - ``rabbitmq['consumer_id']``
     - The identity of the consumer to which messages are published. Default value: ``'hotsauce'``.
   * - ``rabbitmq['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``'/var/opt/opscode/rabbitmq/db'``.
   * - ``rabbitmq['dir']``
     - |directory generic| |default_value_recommended| Default value: ``'/var/opt/opscode/rabbitmq'``.
   * - ``rabbitmq['enable']``
     - |enable service| Default value: ``true``.
   * - ``rabbitmq['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``rabbitmq['jobs_password']``
     - Default value: ``'workcomplete'``.
   * - ``rabbitmq['jobs_user']``
     - Default value: ``'jobs'``.
   * - ``rabbitmq['jobs_vhost']``
     - Default value: ``'/jobs'``.
   * - ``rabbitmq['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``'/var/log/opscode/rabbitmq'``.
   * - ``rabbitmq['log_rotation']``
     - |log_rotation| Default value:

       .. code-block:: ruby

          { 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }

   * - ``rabbitmq['node_ip_address']``
     - |ip_address rabbitmq| Default value: ``'127.0.0.1'``.

       |analytics rabbitmq_settings| When the |chef analytics| server is configured as a standalone server, change this value to ``0.0.0.0``.
   * - ``rabbitmq['node_port']``
     - |port service| Default value: ``'5672'``.
   * - ``rabbitmq['nodename']``
     - |name node| Default value: ``'rabbit@localhost'``.
   * - ``rabbitmq['password']``
     - |password rabbitmq| Default value: ``'chefrocks'``.
   * - ``rabbitmq['reindexer_vhost']``
     - Default value: ``'/reindexer'``.
   * - ``rabbitmq['user']``
     - Default value: ``'chef'``.
   * - ``rabbitmq['vhost']``
     - Default value: ``'/chef'``.
   * - ``rabbitmq['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.

       |analytics rabbitmq_settings| When the |chef analytics| server is configured as a standalone server, change this value to the backend VIP address for the |chef server|.
   * - ``rabbitmq['ssl_versions']``
     - SSL versions for |rabbitmq mgmt|. See also |url rabbitmqssl|  Default value: ``['tlsv1.2', 'tlsv1.1']``.
   * - ``rabbitmq['management_user']``
     - |rabbitmq mgmt| user. Default value: ``'rabbitmgmt'``.
   * - ``rabbitmq['management_password']``
     - |rabbitmq mgmt| password. Default value: ``'chefrocks'``.
   * - ``rabbitmq['management_port']``
     - |rabbitmq mgmt| port. Default value: ``15672``.
   * - ``rabbitmq['management_enabled']``
     - Is the |rabbitmq mgmt| enabled? Default value: ``true``.
   * - ``rabbitmq['analytics_max_length']``
     - Maximum number of messages that can be queued before Rabbit automatically drops messages from the front of the queue to make room for new messages. Default value: ``10000``.
   * - ``rabbitmq['queue_length_monitor_enabled']``
     - Enable the |qmon|. Default value: ``true``.
   * - ``rabbitmq['queue_length_monitor_vhost']``
     - RabbitMQ vhost that the |qmon| will observe. Default value: ``'/analytics'``.
   * - ``rabbitmq['queue_length_monitor_queue']``
     - RabbitMQ queue that the |qmon| will observe. Default value: ``'alaska'``.
   * - ``rabbitmq['queue_length_monitor_millis']``
     - How often to check RabbitMQ queue length, in milliseconds. Default value: ``30000``.
   * - ``rabbitmq['queue_length_monitor_timeout_millis']``
     - If the Chef Server is overloaded, calls to the |qmon| (not RabbitMQ) may timeout with this value. Default value: ``5000``.
   * - ``rabbitmq['drop_on_full_capacity']``
     - If the queue is at capacity, don't send messages to Rabbit until it's no longer at capacity. Default value: ``true``.
   * - ``rabbitmq['prevent_erchef_startup_on_full_capacity']``
     - If the monitored queue is full, Chef Server will not start. Default value: ``false``.
   * - ``rabbitmq['rabbit_mgmt_timeout']``
     - |rabbitmq http pool| timeout. Default value: ``30000``.
   * - ``rabbitmq['rabbit_mgmt_http_init_count']``
     - |rabbitmq http pool| initial worker count. Default value: ``25``.
   * - ``rabbitmq['rabbit_mgmt_http_max_count']``
     - |rabbitmq http pool| maximum worker count.  Default value: ``100``.
   * - ``rabbitmq['rabbit_mgmt_http_cull_interval']``
     - |rabbitmq http pool| maximum cull interval, in seconds. Default value: ``60``.
   * - ``rabbitmq['rabbit_mgmt_http_max_age']``
     - |rabbitmq http pool| maximum connection worker age, in seconds. Default value: ``70``.
   * - ``rabbitmq['rabbit_mgmt_http_max_connection_duration']``
     - |rabbitmq http pool| maximum connection duration, in seconds. Default value: ``70``.
   * - ``rabbitmq['rabbit_mgmt_ibrowse_options']``
     - |rabbitmq http pool| ibrowse options. Must be comma separated pairs of ``{key, value}``. Default value: ``'{connect_timeout, 10000}'``.
   * - ``rabbitmq['queue_at_capacity_affects_overall_status']``
     - If set to ``true``, the overall status returned by the _status HTTP endpoint will be set to fail if the monitored queue is at capacity. Default value: ``false``.


