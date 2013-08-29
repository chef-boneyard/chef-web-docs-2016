.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for opscode-org-creator:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_org_creator['create_splay_ms']``
     - Default value: ``25000``. For example:
       ::

          opscode_org_creator['create_splay_ms'] = 25000

   * - ``opscode_org_creator['create_wait_ms']``
     - Default value: ``30000``. For example:
       ::

          opscode_org_creator['create_wait_ms'] = 30000

   * - ``opscode_org_creator['dir']``
     - Default value: ``"/var/opt/opscode/opscode-org-creator"``. For example:
       ::

          opscode_org_creator['dir'] = "/var/opt/opscode/opscode-org-creator"

   * - ``opscode_org_creator['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_org_creator['enable'] = true

   * - ``opscode_org_creator['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_org_creator['ha'] = false

   * - ``opscode_org_creator['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-org-creator"``. For example:
       ::

          opscode_org_creator['log_directory'] = 
            "/var/log/opscode/opscode-org-creator"

   * - ``opscode_org_creator['max_workers']``
     - Default value: ``1``. For example:
       ::

          opscode_org_creator['max_workers'] = 1

   * - ``opscode_org_creator['port']``
     - |port opscode_orgcreator| Default value: ``4369``. For example:
       ::

          opscode_org_creator['port'] = 4369

   * - ``opscode_org_creator['ready_org_depth']``
     - Default value: ``10``. For example:
       ::

          opscode_org_creator['ready_org_depth'] = 10

   * - ``opscode_org_creator['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_org_creator['svlogd_num'] = 10

   * - ``opscode_org_creator['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_org_creator['svlogd_size'] = 1000000