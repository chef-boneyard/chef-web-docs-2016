.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``redis_lb``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``redis_lb['activerehashing']``
     - |active_rehashing| Default value: ``'no'``.
   * - ``redis_lb['aof_rewrite_min_size']``
     - |appendonly_min_size| Default value: ``'16mb'``.
   * - ``redis_lb['aof_rewrite_percent']``
     - |appendonly_percent| Default value: ``'50'``.
   * - ``redis_lb['appendfsync']``
     - |appendfsync| Default value: ``'always'``.
   * - ``redis_lb['appendonly']``
     - |appendonly| Set to ``yes`` to dump data to an append-only log file. Default value: ``'no'``.
   * - ``redis_lb['bind']``
     - |bind redis| Default value: ``'127.0.0.1'``.
   * - ``redis_lb['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``'/var/opt/opscode/redis_lb/data'``.
   * - ``redis_lb['databases']``
     - |database_quantity| Default value: ``'16'``.
   * - ``redis_lb['dir']``
     - |directory generic| |default_value_recommended| Default value: ``'/var/opt/opscode/redis_lb'``.
   * - ``redis_lb['enable']``
     - |enable service| Default value: ``true``.
   * - ``redis_lb['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``redis_lb['keepalive']``
     - |keepalive request_time| Default value: ``'60'``.
   * - ``redis_lb['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``'/var/log/opscode/redis_lb'``.
   * - ``redis_lb['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``redis_lb['loglevel']``
     - |log_level|. Possible values: ``debug``, ``notice``, ``verbose``, and ``warning``. Default value: ``'notice'``.
   * - ``redis_lb['maxmemory']``
     - |memory maximum_redis| Default value: ``'8m'``.
   * - ``redis_lb['maxmemory_policy']``
     - |memory maximum_policy_redis| Default value: ``'noeviction'``.
   * - ``redis_lb['port']``
     - |port service| Default value: ``'16379'``.
   * - ``redis_lb['save_frequency']``
     - |save_frequency_redis| Default value: ``{ '900' => '1', '300' => '10', '60' => '1000' }``, which will save the database every 15 minutes if at least one key changes, every 5 minutes if at least 10 keys change, and every 60 seconds if 10000 keys change.
   * - ``redis_lb['timeout']``
     - |timeout redis| Default value: ``'300'``.
   * - ``redis_lb['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
