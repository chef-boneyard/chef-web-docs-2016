.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service solr| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_solr['commit_interval']``
     - |solr_commit_interval| This value should be tuned carefully. |solr_update_frequency_caveat| Default value: ``60000`` (every 60 seconds).
   * - ``opscode_solr['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``/var/opt/chef-server/chef-solr/data``.
   * - ``opscode_solr['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/chef-solr``.
   * - ``opscode_solr['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_solr['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``opscode_solr['heap_size']``
     - |heap_size solr| The default value should work for many organizations with fewer than 25 nodes. For an organization with several hundred nodes, the amount of memory that is required often exceeds 3GB. Default value: ``nil``, which is equivalent to 25% of the system memory or 1024 (MB, but this setting is specified as an integer number of MB in EC11), whichever is smaller.
   * - ``opscode_solr['ip_address']``
     - Default value: ``127.0.0.1``.
   * - ``opscode_solr['java_opts']``
     - Default value: ``(empty)``.
   * - ``opscode_solr['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/chef-solr``.
   * - ``opscode_solr['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_solr['max_commit_docs']``
     - |solr_max_commit_docs| This value should be tuned carefully.  |solr_update_frequency_caveat| Default value: ``1000`` (every 1000 documents).
   * - ``opscode_solr['max_field_length']``
     - |solr_max_field_length| Default value: ``100000`` (increased from the |apache solr| default value of ``10000``).
   * - ``opscode_solr['max_merge_docs']``
     - The maximum number of index segments allowed before they are merged into a single index. Default value: ``2147483647``.
   * - ``opscode_solr['merge_factor']``
     - The maximum number of document updates that can be stored in memory before being flushed and added to the current index segment. Default value: ``100``.
   * - ``opscode_solr['new_size']``
     - Default value: ``nil``.
   * - ``opscode_solr['poll_seconds']``
     - Default value: ``20``.
   * - ``opscode_solr['port']``
     - |port service| Default value: ``8983``.
   * - ``opscode_solr['ram_buffer_size']``
     - Default value: ``200``.
   * - ``opscode_solr['url']``
     - Default value: ``'http://localhost:8983'``.
   * - ``opscode_solr['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
