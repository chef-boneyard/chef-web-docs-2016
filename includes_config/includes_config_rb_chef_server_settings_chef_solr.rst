.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_solr['commit_interval']``
     - Default value: ``60000``.
   * - ``chef_solr['data_dir']``
     - The directory in which the index data for |apache solr| is located. Default value: ``/var/opt/chef-server/chef-solr/data``.
   * - ``chef_solr['dir']``
     - Default value: ``/var/opt/chef-server/chef-solr``.
   * - ``chef_solr['enable']``
     - Default value: ``true``.
   * - ``chef_solr['ha']``
     - Indicates that the |chef server| is installed as part of a |ha| topology. Default value: ``false``.
   * - ``chef_solr['heap_size']``
     - Default value: ``nil``.
   * - ``chef_solr['ip_address']``
     - Default value: ``127.0.0.1``.
   * - ``chef_solr['java_opts']``
     - Default value: ``(empty)``.
   * - ``chef_solr['log_directory']``
     - The directory in which log files are located. Default value: ``/var/log/chef-server/chef-solr``.
   * - ``chef_solr['max_commit_docs']``
     - Default value: ``1000``.
   * - ``chef_solr['max_field_length']``
     - Default value: ``100000``.
   * - ``chef_solr['max_merge_docs']``
     - The maximum number of index segments allowed before they are merged into a single index. Default value: ``2147483647``.
   * - ``chef_solr['merge_factor']``
     - The maximum number of document updates that can be stored in memory before being flushed and added to the current index segment. Default value: ``100``.
   * - ``chef_solr['new_size']``
     - Default value: ``nil``.
   * - ``chef_solr['poll_seconds']``
     - Default value: ``20``.
   * - ``chef_solr['port']``
     - Default value: ``8983``.
   * - ``chef_solr['ram_buffer_size']``
     - Default value: ``200``.
   * - ``chef_solr['vip']``
     - Default value: ``127.0.0.1``.





