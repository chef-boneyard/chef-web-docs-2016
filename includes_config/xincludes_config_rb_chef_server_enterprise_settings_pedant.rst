.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for |chef pedant|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``oc_chef_pedant['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/chef-pedant``.
   * - ``oc_chef_pedant['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/chef-pedant``.
   * - ``oc_chef_pedant['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``oc_chef_pedant['log_http_requests']``
     - Default value: ``true``.
