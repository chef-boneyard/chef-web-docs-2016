.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service orgcreator| service has the following settings:

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
     - |directory generic| |default_value_recommended| Default value: ``'/var/opt/opscode/opscode-org-creator'``.
   * - ``opscode_org_creator['enable']``
     - Default value: ``true``.
   * - ``opscode_org_creator['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``opscode_org_creator['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``'/var/log/opscode/opscode-org-creator'``.
   * - ``opscode_org_creator['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_org_creator['max_workers']``
     - Default value: ``1``.
   * - ``opscode_org_creator['port']``
     - |port service| Default value: ``4369``.
   * - ``opscode_org_creator['ready_org_depth']``
     - Default value: ``10``.
