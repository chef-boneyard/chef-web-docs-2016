.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``collectstatic``
     - |collectstatic| Default value: ``false``.
   * - ``database_master_role``
     - |database_master_role|
   * - ``debug``
     - |debug settings_template| Default value: ``false``.
   * - ``legacy_database_settings``
     - |legacy_database_setting lwrp application_python_django|
   * - ``local_settings_file``
     - |file local_settings| Default value: ``local_settings.py``.
   * - ``packages``
     - |packages array|
   * - ``requirements``
     - |requirements lwrp application_python_django|
   * - ``settings``
     - |settings lwrp application_python_django|
   * - ``settings_template``
     - |name template_settings_file| If specified, this file must be located in the ``application`` cookbook. Default value: ``settings.py.erb`` (from this cookbook).
