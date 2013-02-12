.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``checkpoint_completion_target``
     - Default value: ``0.9``.
   * - ``checkpoint_segments``
     - Default value: ``10``.
   * - ``checkpoint_timeout``
     - Default value: ``5min``.
   * - ``checkpoint_warning``
     - Default value: ``30s``.
   * - ``enable``
     - Default value: ``true``.
   * - ``ha``
     - Default value: ``false``.
   * - ``home``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``data_dir``
     - Default value: ``/var/opt/chef-server/postgresql/data``.
   * - ``dir``
     - Default value: ``/var/opt/chef-server/postgresql``.
   * - ``effective_cache_size``
     - Default value: ``#{(node['memory']['total'].to_i / 2) / (1024)}MB``.
   * - ``listen_address``
     - Default value: ``localhost``.
   * - ``log_directory``
     - Default value: ``/var/log/chef-server/postgresql``.
   * - ``max_connections``
     - Default value: ``200``.
   * - ``md5_auth_cidr_addresses``
     - Default value: ``[ ]``.
   * - ``port``
     - Default value: ``5432``.
   * - ``shared_buffers``
     - Default value: ``#{(node['memory']['total'].to_i / 4) / (1024)}MB``.
   * - ``shmall``
     - Default value: ``kernel['machine'] =~ /x86_64/ ? 4194304 : 1048575``.
   * - ``shmmax``
     - Default value: ``kernel['machine'] =~ /x86_64/ ? 17179869184 : 4294967295``.
   * - ``shell``
     - Default value: ``/bin/sh``.
   * - ``sql_password``
     - Default value: ``snakepliskin``.
   * - ``sql_ro_password``
     - Default value: ``shmunzeltazzen``.
   * - ``sql_ro_user``
     - Default value: ``v``.
   * - ``sql_user``
     - Default value: ``opscode_chef``.
   * - ``svlogd_num``
     - Default value: ``10``.
   * - ``svlogd_size``
     - Default value: ``1000000``.
   * - ``trust_auth_cidr_addresses``
     - Default value: ``'127.0.0.1/32', '::1/128'``.
   * - ``user_path``
     - Default value: ``/opt/chef-server/embedded/bin:/opt/chef-server/bin:$PATH``.
   * - ``username``
     - Default value: ``opscode-pgsql``.
   * - ``vip``
     - Default value: ``127.0.0.1``.
   * - ``work_mem``
     - Default value: ``8MB``.




