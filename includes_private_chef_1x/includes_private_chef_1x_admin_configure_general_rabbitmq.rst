.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the |service rabbitmq| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``rabbitmq['consumer_id']``
     - Default value: ``"hotsauce"``. For example:

       .. code-block:: ruby

          rabbitmq['consumer_id'] = "hotsauce"

   * - ``rabbitmq['data_dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq/db"``. For example:

       .. code-block:: ruby

          rabbitmq['data_dir'] = "/var/opt/opscode/rabbitmq/db"

   * - ``rabbitmq['dir']``
     - Default value: ``"/var/opt/opscode/rabbitmq"``. For example:

       .. code-block:: ruby

          rabbitmq['dir'] = "/var/opt/opscode/rabbitmq"

   * - ``rabbitmq['enable']``
     - |enable service| Default value: ``true``. For example:

       .. code-block:: ruby

          rabbitmq['enable'] = true

   * - ``rabbitmq['ha']``
     - |use ha| Default value: ``false``. For example:

       .. code-block:: ruby

          rabbitmq['ha'] = false

   * - ``rabbitmq['jobs_password']``
     - Default value: ``"workcomplete"``. For example:

       .. code-block:: ruby

          rabbitmq['jobs_password'] = "workcomplete"

   * - ``rabbitmq['jobs_user']``
     - Default value: ``"jobs"``. For example:

       .. code-block:: ruby

          rabbitmq['jobs_user'] = "jobs"

   * - ``rabbitmq['jobs_vhost']``
     - Default value: ``"/jobs"``. For example:

       .. code-block:: ruby

          rabbitmq['jobs_vhost'] = "/jobs"

   * - ``rabbitmq['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/rabbitmq"``. For example:

       .. code-block:: ruby

          rabbitmq['log_directory'] = "/var/log/opscode/rabbitmq"



   * - ``rabbitmq['node_ip_address']``
     - |ip_address rabbitmq| Default value: ``"127.0.0.1"``. For example:

       .. code-block:: ruby

          rabbitmq['node_ip_address'] = "127.0.0.1"

   * - ``rabbitmq['node_port']``
     - |port rabbitmq| Default value: ``"5672"``. For example:

       .. code-block:: ruby

          rabbitmq['node_port'] = "5672"

   * - ``rabbitmq['nodename']``
     - |name node| Default value: ``"rabbit@localhost"``. For example:

       .. code-block:: ruby

          rabbitmq['nodename'] = "rabbit@localhost"

   * - ``rabbitmq['password']``
     - |password rabbitmq| Default value: ``"chefrocks"``. For example:

       .. code-block:: ruby

          rabbitmq['password'] = "chefrocks"

   * - ``rabbitmq['reindexer_vhost']``
     - Default value: ``"/reindexer"``. For example:

       .. code-block:: ruby

          rabbitmq['reindexer_vhost'] = "/reindexer"

   * - ``rabbitmq['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:

       .. code-block:: ruby

          rabbitmq['svlogd_num'] = 10

   * - ``rabbitmq['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:

       .. code-block:: ruby

          rabbitmq['svlogd_size'] = 1000000

   * - ``rabbitmq['user']``
     - Default value: ``"chef"``. For example:

       .. code-block:: ruby

          rabbitmq['user'] = "chef"

   * - ``rabbitmq['vhost']``
     - Default value: ``"/chef"``. For example:

       .. code-block:: ruby

          rabbitmq['vhost'] = "/chef"

   * - ``rabbitmq['vip']``
     - |ip_address virtual| sDefault value: ``"127.0.0.1"``. For example:

       .. code-block:: ruby

          rabbitmq['vip'] = "127.0.0.1"

