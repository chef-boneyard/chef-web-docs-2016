.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following configuration settings in the |chef server rb| file to configure |postgresql| for use with the |chef server|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['external']``
     - Required. |postgresql external| Default value: ``false``.
   * - ``postgresql['vip']``
     - Required when ``postgresql['external']`` is set to ``true``. |ip_address virtual| |postgresql external_vip| Set this value to ``external-postgres-host-or-ip`` when ``postgresql['external']`` is set to ``true``.
   * - ``postgresql['port']``
     - Optional when ``postgresql['external']`` is set to ``true``. |port service| |postgresql external_port| Default value: ``5432``.
   * - ``postgresql['db_superuser']``
     - Required when ``postgresql['external']`` is set to ``true``. |postgresql external_db_superuser| Default value: ``'superuser_userid'``.
   * - ``postgresql['db_superuser_password']``
     - Required when ``postgresql['external']`` is set to ``true``. |postgresql external_db_password| Default value: ``'the password'``.

