.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings must be modified when the |chef analytics| server is configured as a standalone server:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``rabbitmq['node_ip_address']``
     - |ip_address rabbitmq| Default value: ``"127.0.0.1"``.

       |analytics rabbitmq_settings| When the |chef analytics| server is configured as a standalone server, change this value to ``0.0.0.0``.
   * - ``rabbitmq['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``.

       |analytics rabbitmq_settings| When the |chef analytics| server is configured as a standalone server, change this value to the backend VIP address for the |chef server|.
