.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_certificate['dir']``
     - Default value: ``"/var/opt/opscode/opscode-certificate"``.
   * - ``opscode_certificate['enable']``
     - Default value: ``true``.
   * - ``opscode_certificate['ha']``
     - Default value: ``false``.
   * - ``opscode_certificate['log_directory']``
     - Default value: ``"/var/log/opscode/opscode-certificate"``.
   * - ``opscode_certificate['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
   * - ``opscode_certificate['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``opscode_certificate['num_certificates_per_worker']``
     - Default value: ``"50"``.
   * - ``opscode_certificate['num_workers']``
     - Default value: ``"2"``.
   * - ``opscode_certificate['port']``
     - Default value: ``5140``.
   * - ``opscode_certificate['vip']``
     - Default value: ``"127.0.0.1"``.