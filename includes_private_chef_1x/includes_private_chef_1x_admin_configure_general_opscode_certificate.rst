.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for opscode-certificate:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_certificate['dir']``
     - Default value: ``"/var/opt/opscode/opscode-certificate"``. For example:
       ::

          opscode_certificate['dir'] = "/var/opt/opscode/opscode-certificate"

   * - ``opscode_certificate['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_certificate['enable'] = true

   * - ``opscode_certificate['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_certificate['ha'] = false

   * - ``opscode_certificate['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-certificate"``. For example:
       ::

          opscode_certificate['log_directory'] = "/var/log/opscode/opscode-certificate"

   * - ``opscode_certificate['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_certificate['svlogd_size'] = 1000000

   * - ``opscode_certificate['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_certificate['svlogd_num'] = 10

   * - ``opscode_certificate['num_certificates_per_worker']``
     - Default value: ``"50"``. For example:
       ::

          opscode_certificate['num_certificates_per_worker'] = "50"

   * - ``opscode_certificate['num_workers']``
     - Default value: ``"2"``. For example:
       ::

          opscode_certificate['num_workers'] = "2"

   * - ``opscode_certificate['port']``
     - Default value: ``5140``. For example:
       ::

          opscode_certificate['port'] = 5140

   * - ``opscode_certificate['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_certificate['vip'] = "127.0.0.1"

