.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service redis| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``redis['appendfsync']``
     - |appendfsync| Default value: ``"everysec"``.
   * - ``redis['appendonly']``
     - |appendonly| Set to ``yes`` to dump data to an append-only log file. Default value: ``"no"``.
   * - ``redis['bind']``
     - |bind redis| Default value: ``"127.0.0.1"``.
   * - ``redis['databases']``
     - |database_quantity| Default value: ``"16"``.
   * - ``redis['dir']``
     - |directory redis| Default value: ``"/var/opt/opscode/redis"``.
   * - ``redis['enable']``
     - |enable service| Default value: ``true``.
   * - ``redis['ha']``
     - |use ha| Default value: ``false``.
   * - ``redis['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/redis"``.
   * - ``redis['loglevel']``
     - Default value: ``"notice"``.
   * - ``redis['maxmemory']``
     - |memory maximum_redis| Default value: ``"1g"``.
   * - ``redis['maxmemory_policy']``
     - |memory maximum_policy_redis| Default value: ``"volatile-lru"``.
   * - ``redis['port']``
     - |port redis| Default value: ``"6379"``.
   * - ``redis['root']``
     - |root redis| Default value: ``"/var/opt/opscode/redis"``.
   * - ``redis['svlogd_num']``
     - |svlogd_num| Default value: ``10``.
   * - ``redis['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``.
   * - ``redis['timeout']``
     - |timeout redis| Default value: ``"300"``.
   * - ``redis['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``.
   * - ``redis['vm']``
     - Default value:
       ::

          {"enabled"=>"no",
           "max_memory"=>"0",
           "page_size"=>"32",
           "pages"=>"134217728",
           "max_threads"=>"4"}

