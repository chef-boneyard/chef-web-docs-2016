.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``opscode-expander``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_expander['consumer_id']``
     - Default value: ``default``.
   * - ``opscode_expander['dir']``
     - The directory in which ``opscode-expander`` is located. The default value is the recommended value. Default value: ``/var/opt/chef-server/chef-expander``.
   * - ``opscode_expander['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_expander['ha']``
     - |use ha| Default value: ``false``.
   * - ``opscode_expander['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/chef-expander``.
   * - ``opscode_expander['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_expander['nodes']``
     - |worker_processes| Default value: ``2``.
   * - ``opscode_expander['reindexer_log_directory']``
     - Default value: ``/var/log/chef-server/chef-expander-reindexer``.


