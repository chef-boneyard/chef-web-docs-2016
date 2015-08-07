.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``postgresql``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['checkpoint_completion_target']``
     - |checkpoint_completion_target| Default value: ``0.5``.
   * - ``postgresql['checkpoint_segments']``
     - |checkpoint_segments| Default value: ``3``.
   * - ``postgresql['checkpoint_timeout']``
     - |checkpoint_timeout| Default value: ``5min``.
   * - ``postgresql['checkpoint_warning']``
     - |checkpoint_warning| Default value: ``30s``.
   * - ``postgresql['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``/var/opt/opscode/postgresql/#{node['private_chef']['postgresql']['version']}/data``.
   * - ``postgresql['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/opscode/postgresql/#{node['private_chef']['postgresql']['version']}``.
   * - ``postgresql['effective_cache_size']``
     - |effective_cache_size postgresql| Default value: 50% of available RAM.
   * - ``postgresql['enable']``
     - |enable service| Default value: ``true``.
   * - ``postgresql['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``postgresql['home']``
     - |directory postgresql_home| Default value: ``/var/opt/opscode/postgresql``.
   * - ``postgresql['keepalives_count']``
     - The maximum number of keepalive proves that should be sent before dropping a connection. Default value: ``2``.
   * - ``postgresql['keepalives_idle']``
     - The amount of time (in seconds) a connection must remain idle before keepalive probes will resume. Default value: ``60``.
   * - ``postgresql['keepalives_interval']``
     - The amount of time (in seconds) between keepalive probes. Default value: ``15``.
   * - ``postgresql['listen_address']``
     - |port listen_postgresql| Default value: ``localhost``.
   * - ``postgresql['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``/var/log/opscode/postgresql/#{node['private_chef']['postgresql']['version']}``.
   * - ``postgresql['log_min_duration_statement']``
     - |log_rotation min_duration| Possible values: ``-1`` (disabled, do not log any statements), ``0`` (log every statement), or an integer greater than zero. When the integer is greater than zero, this value is the amount of time (in milliseconds) that a query statement must have run before it is logged. Default value: ``-1``.
   * - ``postgresql['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``postgresql['max_connections']``
     - |max_connections| Default value: ``350``.
   * - ``postgresql['md5_auth_cidr_addresses']``
     - Use instead of ``trust_auth_cidr_addresses`` to encrypt passwords using MD5 hashes. Default value: ``[ '127.0.0.1/32', '::1/128' ]``.
   * - ``postgresql['port']``
     - |port service| Default value: ``5432``.
   * - ``postgresql['shared_buffers']``
     - |shared_buffers postgresql| Default value: ``#{(node['memory']['total'].to_i / 4) / (1024)}MB``.
   * - ``postgresql['shell']``
     - Default value: ``/bin/sh``.
   * - ``postgresql['shmall']``
     - The total amount of available shared memory. Default value: ``4194304``.
   * - ``postgresql['shmmax']``
     - The maximum amount of shared memory. Default value: ``17179869184``.
   * - ``postgresql['sql_password']``
     - The password for the |postgresql| user account. Default value: ``snakepliskin``.
   * - ``postgresql['sql_ro_password']``
     - Default value: ``shmunzeltazzen``.
   * - ``postgresql['sql_ro_user']``
     - Default value: ``opscode_chef_ro``.
   * - ``postgresql['sql_user']``
     - Default value: ``opscode_chef``.
   * - ``postgresql['trust_auth_cidr_addresses']``
     - Use for clear-text passwords. See ``md5_auth_cidr_addresses``. Default value: ``'127.0.0.1/32', '::1/128'``.
   * - ``postgresql['user_path']``
     - Default value: ``/opt/opscode/embedded/bin:/opt/opscode/bin:$PATH``.
   * - ``postgresql['username']``
     - |name user postgresql| Default value: ``opscode-pgsql``.
   * - ``postgresql['version']``
     - The (currently) hardcoded version of |postgresql|. Default value: ``'9.2'``.
   * - ``postgresql['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
   * - ``postgresql['work_mem']``
     - |work_mem| Default value: ``8MB``.
