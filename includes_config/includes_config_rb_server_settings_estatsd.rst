.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for ``estatsd``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``estatsd['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/opscode/estatsd"``.
   * - ``estatsd['enable']``
     - |enable service| Default value: ``true``.
   * - ``estatsd['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/estatsd"``.
   * - ``estatsd['port']``
     - |port service| Default value: ``9466``.
   * - ``estatsd['protocol']``
     - Use to send application statistics with |statsd| protocol formatting. Set this value to ``statsd`` to apply |statsd| protocol formatting.
   * - ``estatsd['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``.
