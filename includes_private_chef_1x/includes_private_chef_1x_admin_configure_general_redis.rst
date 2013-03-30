.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |redis|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``redis['appendfsync']``
     - Default value: ``"everysec"``. For example:
       ::

          redis['appendfsync'] = "everysec"

   * - ``redis['appendonly']``
     - Default value: ``"no"``. For example:
       ::

          redis['appendonly'] = "no"

   * - ``redis['bind']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          redis['bind'] = "127.0.0.1"

   * - ``redis['databases']``
     - Default value: ``"16"``. For example:
       ::

          redis['databases'] = "16"

   * - ``redis['dir']``
     - Default value: ``"/var/opt/opscode/redis"``. For example:
       ::

          redis['dir'] = "/var/opt/opscode/redis"

   * - ``redis['enable']``
     - Default value: ``true``. For example:
       ::

          redis['enable'] = true

   * - ``redis['ha']``
     - Default value: ``false``. For example:
       ::

          redis['ha'] = false

   * - ``redis['log_directory']``
     - Default value: ``"/var/log/opscode/redis"``. For example:
       ::

          redis['log_directory'] = "/var/log/opscode/redis"

   * - ``redis['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          redis['svlogd_size'] = 1000000

   * - ``redis['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          redis['svlogd_num'] = 10

   * - ``redis['loglevel']``
     - Default value: ``"notice"``. For example:
       ::

          redis['loglevel'] = "notice"

   * - ``redis['maxmemory']``
     - Default value: ``"1g"``. For example:
       ::

          redis['maxmemory'] = "1g"

   * - ``redis['maxmemory_policy']``
     - Default value: ``"volatile-lru"``. For example:
       ::

          redis['maxmemory_policy'] = "volatile-lru"

   * - ``redis['port']``
     - Default value: ``"6379"``. For example:
       ::

          redis['port'] = "6379"

   * - ``redis['root']``
     - Default value: ``"/var/opt/opscode/redis"``. For example:
       ::

          redis['root'] = "/var/opt/opscode/redis"

   * - ``redis['timeout']``
     - Default value: ``"300"``. For example:
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

