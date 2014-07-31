.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``estatsd``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``estatsd['dir']``
     - The directory in which ``estatsd`` is located. The default value is the recommended value. Default value: ``"/var/opt/opscode/estatsd"``.
   * - ``estatsd['enable']``
     - Default value: ``true``.
   * - ``estatsd['log_directory']``
     - Default value: ``"/var/log/opscode/estatsd"``.
   * - ``estatsd['port']``
     - Default value: ``9466``.
   * - ``estatsd['vip']``
     - Default value: ``"127.0.0.1"``.