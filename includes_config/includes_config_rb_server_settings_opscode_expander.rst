.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``opscode-expander``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_expander['consumer_id']``
     - |id consumer| Default value: ``default``.
   * - ``opscode_expander['dir']``
     - |directory generic| |default_value_recommended| Default value:

       .. code-block:: ruby

          /var/opt/opscode/opscode-expander

   * - ``opscode_expander['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_expander['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``opscode_expander['log_directory']``
     - |directory logs| |default_value_recommended| Default value:

       .. code-block:: ruby

          /var/log/opscode/opscode-expander

   * - ``opscode_expander['log_rotation']``
     - |log_rotation| Default value:

       .. code-block:: ruby

          { 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }

   * - ``opscode_expander['nodes']``
     - |worker_processes| Default value: ``2``.
   * - ``opscode_expander['reindexer_log_directory']``
     - |directory expander_reindexer| Default value:

       .. code-block:: ruby

          /var/log/opscode/opscode-expander-reindexer
