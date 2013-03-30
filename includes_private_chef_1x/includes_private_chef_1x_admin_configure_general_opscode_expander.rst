.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for opscode-expander:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_expander['consumer_id']``
     - Default value: ``"default"``. For example:
       ::

          opscode_expander['consumer_id'] = "default"

   * - ``opscode_expander['dir']``
     - Default value: ``"/var/opt/opscode/opscode-expander"``. For example:
       ::

          opscode_expander['dir'] = "/var/opt/opscode/opscode-expander"

   * - ``opscode_expander['enable']``
     - Default value: ``true``. For example:
       ::

          opscode_expander['enable'] = true

   * - ``opscode_expander['ha']``
     - Default value: ``false``. For example:
       ::

          opscode_expander['ha'] = false

   * - ``opscode_expander['log_directory']``
     - Default value: ``"/var/log/opscode/opscode-expander"``. For example:
       ::

          opscode_expander['log_directory'] = "/var/log/opscode/opscode-expander"

   * - ``opscode_expander['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          opscode_expander['svlogd_size'] = 1000000

   * - ``opscode_expander['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          opscode_expander['svlogd_num'] = 10

   * - ``opscode_expander['nodes']``
     - Default value: ``2``. For example:
       ::

          opscode_expander['nodes'] = 2

   * - ``opscode_expander['reindexer_log_directory']``
     - Default value: ``"/var/log/opscode/opscode-expander-reindexer"``. For example:
       ::

          opscode_expander['reindexer_log_directory'] = 
            "/var/log/opscode/opscode-expander-reindexer"

   * - ``opscode_expander['reindexer_svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          opscode_expander['reindexer_svlogd_size'] = 1000000

   * - ``opscode_expander['redindexer_svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          opscode_expander['reindexer_svlogd_num'] = 10

