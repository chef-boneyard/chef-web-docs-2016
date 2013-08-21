.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['checkpoint_completion_target']``
     - A checkpoint tuning setting that uses a completion percentage used to determine how quickly a checkpoint should finish in relation to the completion status of the next checkpoint. For example, if the value is ``0.5``, then a checkpoint will attempt to finish before 50% of the next checkpoint is done. Default value: ``0.9``.
   * - ``postgresql['checkpoint_segments']``
     - The maximum amount (in megabytes) between checkpoints in log file segments. Default value: ``10``.
   * - ``postgresql['checkpoint_timeout']``
     - The amount of time (in minutes) between checkpoints. Default value: ``5min``.
   * - ``postgresql['checkpoint_warning']``
     - A frequency (in seconds) at which message is sent to the server log files if checkpoint segments are being filled faster than their currently configured values. Default value: ``30s``.
   * - ``postgresql['data_dir']``
     - Default value: ``/var/opt/chef-server/postgresql/data``.
   * - ``postgresql['dir']``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``postgresql['effective_cache_size']``
     - The size of the disk cache that is used for data files. Default value: ``#{(node['memory']['total'].to_i / 2) / (1024)}MB``.
   * - ``postgresql['enable']``
     - Default value: ``true``.
   * - ``postgresql['ha']``
     - Indicates that the |chef server| is installed as part of a |ha| topology. Default value: ``false``.
   * - ``postgresql['home']``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``postgresql['listen_address']``
     - The connection source to which |postgresql| will respond. Default value: ``localhost``.
   * - ``postgresql['log_directory']``
     - The directory in which log files are located. Default value: ``/var/log/chef-server/postgresql``.
   * - ``postgresql['max_connections']``
     - The maximum number of concurrent connections that are allowed to access the database. Default value: ``200``.
   * - ``postgresql['md5_auth_cidr_addresses']``
     - Default value: ``[ ]``.
   * - ``postgresql['port']``
     - The port on which |postgresql| will listen. Default value: ``5432``.
   * - ``postgresql['shared_buffers']``
     - The amount of memory that is dedicated to |postgresql| for data caching. Default value: ``#{(node['memory']['total'].to_i / 4) / (1024)}MB``.
   * - ``postgresql['shmall']``
     - The total amount of available shared memory. Default value: ``kernel['machine'] =~ /x86_64/ ? 4194304 : 1048575``.
   * - ``postgresql['shmmax']``
     - The maximum amount of shared memory. Default value: ``kernel['machine'] =~ /x86_64/ ? 17179869184 : 4294967295``.
   * - ``postgresql['shell']``
     - Default value: ``/bin/sh``.
   * - ``postgresql['sql_password']``
     - The password for the |postgresql| user account. Default value: ``snakepliskin``.
   * - ``postgresql['sql_ro_password']``
     - Default value: ``shmunzeltazzen``.
   * - ``postgresql['sql_ro_user']``
     - Default value: ``opscode_chef_ro``.
   * - ``postgresql['sql_user']``
     - Default value: ``opscode_chef``.
   * - ``postgresql['svlogd_num']``
     - A retention policy that is based on the number of retained log files for the current set of log files that are managed by |svlogd|. Default value: ``10``.
   * - ``postgresql['svlogd_size']``
     - The size (in bytes) of the current log file that is managed by |svlogd|. Default value: ``1000000``.
   * - ``postgresql['trust_auth_cidr_addresses']``
     - Default value: ``'127.0.0.1/32', '::1/128'``.
   * - ``postgresql['user_path']``
     - Default value: ``/opt/chef-server/embedded/bin:/opt/chef-server/bin:$PATH``.
   * - ``postgresql['username']``
     - The user name for the |postgresql| account.Default value: ``opscode-pgsql``.
   * - ``postgresql['vip']``
     - Default value: ``127.0.0.1``.
   * - ``postgresql['work_mem']``
     - The size (in megabytes) of allowed in-memory sorting. Default value: ``8MB``.




