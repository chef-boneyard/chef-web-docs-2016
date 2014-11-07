.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.
 
This configuration file has the following settings for |ruby on rails|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``supermarket['rails']['enable']``
     - |enable service| Default value: ``true``.
   * - ``supermarket['rails']['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"#{node['supermarket']['log_directory']}/rails"``.
   * - ``supermarket['rails']['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``supermarket['rails']['port']``
     - |port service| Default value: ``13000``.
