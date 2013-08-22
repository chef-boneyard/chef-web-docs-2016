.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``redis['appendfsync']``
     - Default value: ``"everysec"``.
   * - ``redis['appendonly']``
     - Default value: ``"no"``.
   * - ``redis['bind']``
     - Default value: ``"127.0.0.1"``.
   * - ``redis['databases']``
     - Default value: ``"16"``.
   * - ``redis['dir']``
     - Default value: ``"/var/opt/opscode/redis"``.
   * - ``redis['enable']``
     - Default value: ``true``.
   * - ``redis['ha']``
     - Default value: ``false``.
   * - ``redis['log_directory']``
     - Default value: ``"/var/log/opscode/redis"``.
   * - ``redis['loglevel']``
     - Default value: ``"notice"``.
   * - ``redis['maxmemory']``
     - Default value: ``"1g"``.
   * - ``redis['maxmemory_policy']``
     - Default value: ``"volatile-lru"``.
   * - ``redis['port']``
     - Default value: ``"6379"``.
   * - ``redis['root']``
     - Default value: ``"/var/opt/opscode/redis"``.
   * - ``redis['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``redis['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
   * - ``redis['timeout']``
     - Default value: ``"300"``.
   * - ``redis['vip']``
     - Default value: ``"127.0.0.1"``.
   * - ``redis['vm']``
     - Default value:
       ::

          {"enabled"=>"no",
           "max_memory"=>"0",
           "page_size"=>"32",
           "pages"=>"134217728",
           "max_threads"=>"4"}

