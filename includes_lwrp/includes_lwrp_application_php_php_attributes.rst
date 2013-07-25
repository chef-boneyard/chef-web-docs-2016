.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``database_master_role``
     - |database_master_role|
   * - ``local_settings_file``
     - |local_settings_file lwrp application_php|
   * - ``packages``
     - |packages lwrp application_php|
   * - ``settings_template``
     - |name template_settings_file| If specified, this file must be located in the ``application`` cookbook. Default value: ``#{local_settings_file}.erb``.
