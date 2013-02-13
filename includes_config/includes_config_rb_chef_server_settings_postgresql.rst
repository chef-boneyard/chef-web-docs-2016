.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['checkpoint_completion_target']``
     - Default value: ``0.9``.
   * - ``postgresql['checkpoint_segments']``
     - Default value: ``10``.
   * - ``postgresql['checkpoint_timeout']``
     - Default value: ``5min``.
   * - ``postgresql['checkpoint_warning']``
     - Default value: ``30s``.
   * - ``postgresql['enable']``
     - Default value: ``true``.
   * - ``postgresql['ha']``
     - Default value: ``false``.
   * - ``postgresql['home']``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``postgresql['data_dir']``
     - Default value: ``/var/opt/chef-server/postgresql/data``.
   * - ``postgresql['dir']``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``postgresql['effective_cache_size']``
     - Default value: ``#{(node['memory']['total'].to_i / 2) / (1024)}MB``.
   * - ``postgresql['listen_address']``
     - Default value: ``localhost``.
   * - ``postgresql['log_directory']``
     - Default value: ``/var/log/chef-server/postgresql``.
   * - ``postgresql['max_connections']``
     - Default value: ``200``.
   * - ``postgresql['md5_auth_cidr_addresses']``
     - Default value: ``[ ]``.
   * - ``postgresql['port']``
     - Default value: ``5432``.
   * - ``postgresql['shared_buffers']``
     - Default value: ``#{(node['memory']['total'].to_i / 4) / (1024)}MB``.
   * - ``postgresql['shmall']``
     - Default value: ``kernel['machine'] =~ /x86_64/ ? 4194304 : 1048575``.
   * - ``postgresql['shmmax']``
     - Default value: ``kernel['machine'] =~ /x86_64/ ? 17179869184 : 4294967295``.
   * - ``postgresql['shell']``
     - Default value: ``/bin/sh``.
   * - ``postgresql['sql_password']``
     - Default value: ``snakepliskin``.
   * - ``postgresql['sql_ro_password']``
     - Default value: ``shmunzeltazzen``.
   * - ``postgresql['sql_ro_user']``
     - Default value: ``opscode_chef_ro``.
   * - ``postgresql['sql_user']``
     - Default value: ``opscode_chef``.
   * - ``postgresql['svlogd_num']``
     - Default value: ``10``.
   * - ``postgresql['svlogd_size']``
     - Default value: ``1000000``.
   * - ``postgresql['trust_auth_cidr_addresses']``
     - Default value: ``'127.0.0.1/32', '::1/128'``.
   * - ``postgresql['user_path']``
     - Default value: ``/opt/chef-server/embedded/bin:/opt/chef-server/bin:$PATH``.
   * - ``postgresql['username']``
     - Default value: ``opscode-pgsql``.
   * - ``postgresql['vip']``
     - Default value: ``127.0.0.1``.
   * - ``postgresql['work_mem']``
     - Default value: ``8MB``.




