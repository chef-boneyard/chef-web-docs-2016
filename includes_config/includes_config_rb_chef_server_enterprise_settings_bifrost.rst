.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service bifrost| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bifrost['dir']``
     - 
   * - ``bifrost['enable']``
     - |enable service| Default value: ``true``.
   * - ``bifrost['ha']``
     - |use ha|
   * - ``bifrost['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/opscode/oc_bifrost``.
   * - ``bifrost['db_pool_size']``
     - |db_pool_size| This value should be increased if failures indicate that the |service bifrost| service ran out of connections. This value should be tuned in conjunction with the ``postgresql['max_connections']`` setting for |postgresql|. Default value: ``20``.
   * - ``bifrost['log_rotation']``
     - 
   * - ``bifrost['sql_password']``
     - 
   * - ``bifrost['sql_user']``
     - 
   * - ``bifrost['sql_ro_password']``
     - 
   * - ``bifrost['sql_ro_user']``
     - 