.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the |service solr| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_solr['commit_interval']``
     - Default value: ``60000``. For example:
       ::

          opscode_solr['commit_interval'] = 60000

   * - ``opscode_solr['data_dir']``
     - Default value: ``"/var/opt/opscode/opscode-solr/data"``. For example:
       ::

          opscode_solr['data_dir'] = "/var/opt/opscode/opscode-solr/data"

   * - ``opscode_solr['dir']``
     - Default value: ``"/var/opt/opscode/opscode-solr"``. For example:
       ::

          opscode_solr['dir'] = "/var/opt/opscode/opscode-solr"

   * - ``opscode_solr['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_solr['enable'] = true

   * - ``opscode_solr['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_solr['ha'] = false

   * - ``opscode_solr['heap_size']``
     - |heap_size solr| The default value should work for many organizations with fewer than 25 nodes. For an organization with several hundred nodes, the amount of memory that is required often exceeds 3GB. Default value: ``"256M"``. For example:
       ::

          opscode_solr['heap_size'] = "256M"

   * - ``opscode_solr['ip_address']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_solr['ip_address'] = "127.0.0.1"

   * - ``opscode_solr['java_opts']``
     - Default value: ``""``. For example:
       ::

          opscode_solr['java_opts'] = ""

   * - ``opscode_solr['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-solr"``. For example:
       ::

          opscode_solr['log_directory'] = "/var/log/opscode/opscode-solr"

   * - ``opscode_solr['max_commit_docs']``
     - Default value: ``1000``. For example:
       ::

          opscode_solr['max_commit_docs'] = 1000

   * - ``opscode_solr['max_field_length']``
     - Default value: ``100000``. For example:
       ::

          opscode_solr['max_field_length'] = 100000

   * - ``opscode_solr['max_merge_docs']``
     - Default value: ``2147483647``. For example:
       ::

          opscode_solr['max_merge_docs'] = 2147483647

   * - ``opscode_solr['merge_factor']``
     - Default value: ``100``. For example:
       ::

          opscode_solr['merge_factor'] = 100

   * - ``opscode_solr['poll_seconds']``
     - Default value: ``20``. For example:
       ::

          opscode_solr['poll_seconds'] = 20

   * - ``opscode_solr['port']``
     - |port opscode_solr| Default value: ``8983``. For example:
       ::

          opscode_solr['port'] = 8983

   * - ``opscode_solr['ram_buffer_size']``
     - Default value: ``200``. For example:
       ::

          opscode_solr['ram_buffer_size'] = 200

   * - ``opscode_solr['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_solr['svlogd_num'] = 10

   * - ``opscode_solr['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_solr['svlogd_size'] = 1000000

   * - ``opscode_solr['url']``
     - Default value: ``"http://localhost:8983"``. For example:
       ::

          opscode_solr['url'] = "http://localhost:8983"

   * - ``opscode_solr['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_solr['vip'] = "127.0.0.1"

