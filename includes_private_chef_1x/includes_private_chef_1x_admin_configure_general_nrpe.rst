.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |nagios nrpe|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nrpe['allowed_hosts']``
     - Default value: ``["127.0.0.1", "192.168.4.131"]``. For example:
       ::

          nrpe['allowed_hosts'] = ["127.0.0.1", "192.168.4.131"]

   * - ``nrpe['dir']``
     - Default value: ``"/var/opt/opscode/nrpe"``. For example:
       ::

          nrpe['dir'] = "/var/opt/opscode/nrpe"

   * - ``nrpe['enable']``
     - Default value: ``true``. For example:
       ::

          nrpe['enable'] = true

   * - ``nrpe['listen']``
     - Default value: ``"192.168.4.131"``. For example:
       ::

          nrpe['listen'] = "192.168.4.131"

   * - ``nrpe['log_directory']``
     - Default value: ``"/var/log/opscode/nrpe"``. For example:
       ::

          nrpe['log_directory'] = "/var/log/opscode/nrpe"

   * - ``nrpe['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          nrpe['svlogd_size'] = 1000000

   * - ``nrpe['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          nrpe['svlogd_num'] = 10

   * - ``nrpe['port']``
     - Default value: ``9672``. For example:
       ::

          nrpe['port'] = 9672

