.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |postgresql|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['data_dir']``
     - Default value: ``"/var/opt/opscode/postgresql/data"``. For example:
       ::

          postgresql['data_dir'] = "/var/opt/opscode/postgresql/data"

   * - ``postgresql['dir']``
     - Default value: ``"/var/opt/opscode/postgresql"``. For example:
       ::

          postgresql['dir'] = "/var/opt/opscode/postgresql"

   * - ``postgresql['enable']``
     - Default value: ``true``. For example:
       ::

          postgresql['enable'] = true


   * - ``postgresql['ha']``
     - Default value: ``false``. For example:
       ::

          postgresql['ha'] = false

   * - ``postgresql['home']``
     - Default value: ``"/opt/opscode/embedded"``. For example:
       ::

          postgresql['home'] = "/opt/opscode/embedded"

   * - ``postgresql['listen_address']``
     - Default value: ``"localhost"``. For example:
       ::

          postgresql['listen_address'] = "localhost"


   * - ``postgresql['log_directory']``
     - Default value: ``"/var/log/opscode/postgresql"``. For example:
       ::

          postgresql['log_directory'] = "/var/log/opscode/postgresql"

   * - ``postgresql['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          postgresql['svlogd_size'] = 1000000

   * - ``postgresql['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          postgresql['svlogd_num'] = 10

   * - ``postgresql['max_connections']``
     - Default value: ``200``. For example:
       ::

          postgresql['max_connections'] = 200

   * - ``postgresql['md5_auth_cidr_addresses']``
     - Default value: ``[]``. For example:
       ::

          postgresql['md5_auth_cidr_addresses'] = []

   * - ``postgresql['port']``
     - Default value: ``5432``. For example:
       ::

          postgresql['port'] = 5432

   * - ``postgresql['shell']``
     - Default value: ``"/bin/sh"``. For example:
       ::

          postgresql['shell'] = "/bin/sh"

   * - ``postgresql['shmall']``
     - Default value: ``4194304``. For example:
       ::

          postgresql['shmall'] = 4194304

   * - ``postgresql['shmmax']``
     - Default value: ``17179869184``. For example:
       ::

          postgresql['shmmax'] = 17179869184

   * - ``postgresql['sql_password']``
     - Default value: ``"snakepliskin"``. For example:
       ::

          postgresql['sql_password'] = "snakepliskin"

   * - ``postgresql['sql_ro_password']``
     - Default value: ``"shmunzeltazzen"``. For example:
       ::

          postgresql['sql_ro_password'] = "shmunzeltazzen"

   * - ``postgresql['sql_ro_user']``
     - Default value: ``"opscode_chef_ro"``. For example:
       ::

          postgresql['sql_ro_user'] = "opscode_chef_ro"

   * - ``postgresql['sql_user']``
     - Default value: ``"opscode_chef"``. For example:
       ::

          postgresql['sql_user'] = "opscode_chef"

   * - ``postgresql['trust_auth_cidr_addresses']``
     - Default value: ``["127.0.0.1/32", "::1/128"]``. For example:
       ::

          postgresql['trust_auth_cidr_addresses'] = ["127.0.0.1/32", "::1/128"]

   * - ``postgresql['username']``
     - Default value: ``"opscode-pgsql"``. For example:
       ::

          postgresql['username'] = "opscode-pgsql"

   * - ``postgresql['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          postgresql['vip'] = "127.0.0.1"


  

