.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``opscode_org_creator``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_org_creator['create_splay_ms']``
     - Default value: ``25000``.
   * - ``opscode_org_creator['create_wait_ms']``
     - Default value: ``30000``.
   * - ``opscode_org_creator['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/opscode/opscode-org-creator"``.
   * - ``opscode_org_creator['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_org_creator['ha']``
     - |use ha| Default value: ``false``.
   * - ``opscode_org_creator['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/opscode-org-creator"``.
   * - ``opscode_org_creator['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_org_creator['max_workers']``
     - Default value: ``1``.
   * - ``opscode_org_creator['port']``
     - |port opscode_orgcreator| Default value: ``4369``.
   * - ``opscode_org_creator['ready_org_depth']``
     - Default value: ``10``.

