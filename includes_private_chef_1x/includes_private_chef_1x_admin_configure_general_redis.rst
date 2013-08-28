.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |redis|:

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
     - |port redis| Default value: ``"6379"``. For example:
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
     - Default value: ``"127.0.0.1"``. For example:
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

