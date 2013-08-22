.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``rabbitmq['consumer_id']``
     - Default value: ``"hotsauce"``.
   * - ``rabbitmq['data_dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq/db"``.
   * - ``rabbitmq['dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq"``.
   * - ``rabbitmq['enable']``
     - Default value: ``true``.
   * - ``rabbitmq['ha']``
     - Indicates that the |chef server| is installed as part of a |ha| topology. Default value: ``false``.
   * - ``rabbitmq['jobs_password']``
     - Default value: ``"workcomplete"``.
   * - ``rabbitmq['jobs_user']``
     - Default value: ``"jobs"``.
   * - ``rabbitmq['jobs_vhost']``
     - Default value: ``"/jobs"``.
   * - ``rabbitmq['log_directory']``
     - The directory in which log files are located. Default value: ``"/var/log/opscode/rabbitmq"``.
   * - ``rabbitmq['node_ip_address']``
     - The IP address for machine on which |rabbitmq| is running. Default value: ``"127.0.0.1"``.
   * - ``rabbitmq['node_port']``
     - The port on which |rabbitmq| listens. Default value: ``"5672"``.
   * - ``rabbitmq['nodename']``
     - Default value: ``"rabbit@localhost"``.
   * - ``rabbitmq['password']``
     - Default value: ``"chefrocks"``.
   * - ``rabbitmq['reindexer_vhost']``
     - Default value: ``"/reindexer"``.
   * - ``rabbitmq['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.

   * - ``rabbitmq['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile.Default value: ``1000000``.
   * - ``rabbitmq['user']``
     - Default value: ``"chef"``.
   * - ``rabbitmq['vhost']``
     - Default value: ``"/chef"``.
   * - ``rabbitmq['vip']``
     - Default value: ``"127.0.0.1"``.

