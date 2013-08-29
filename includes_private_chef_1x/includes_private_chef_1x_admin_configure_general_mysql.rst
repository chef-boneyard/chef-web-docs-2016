.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |mysql|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``mysql['install_libs']``
     - Default value: ``true``. For example:
       ::

          mysql['install_libs'] = true

   * - ``mysql['sql_password']``
     - Default value: ``"snakepliskin"``. For example:
       ::

          mysql['sql_password'] = "snakepliskin"

   * - ``mysql['sql_user']``
     - Default value: ``"opscode_chef"``. For example:
       ::

          mysql['sql_user'] = "opscode_chef"

   * - ``mysql['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          mysql['vip'] = "127.0.0.1"

