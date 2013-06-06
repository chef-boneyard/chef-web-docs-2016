.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |name command| Default value: ``node['nagios']['plugin']['plugin_dir']/command_name``.
   * - ``command_name``
     - |command nagios_nrpecheck|
   * - ``critical_condition``
     - |critical_condition lwrp nagios_nrpecheck|
   * - ``parameters``
     - |parameters lwrp nagios_nrpecheck|
   * - ``warning_condition``
     - |warning_condition|
