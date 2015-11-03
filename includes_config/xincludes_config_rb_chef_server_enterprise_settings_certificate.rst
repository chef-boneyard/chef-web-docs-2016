.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service certificate| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_certificate['dir']``
     - |directory generic| |default_value_recommended| Default value: ``'/var/opt/opscode/opscode-certificate'``.
   * - ``opscode_certificate['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_certificate['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``opscode_certificate['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``'/var/log/opscode/opscode-certificate'``.
   * - ``opscode_certificate['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_certificate['num_certificates_per_worker']``
     - Default value: ``'50'``.
   * - ``opscode_certificate['num_workers']``
     - Default value: ``'2'``.
   * - ``opscode_certificate['port']``
     - |port service| Default value: ``5140``.
   * - ``opscode_certificate['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.