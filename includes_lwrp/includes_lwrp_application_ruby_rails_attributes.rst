.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``bundle_command``
     - 
   * - ``bundler``
     - |use_bundler|
   * - ``bundler_deployment``
     - |use_bundler_option_deployment|
   * - ``bundler_without_groups``
     - |bundler_skip_groups|
   * - ``database_master_role``
     - |database_master_role database_yml|
   * - ``database_template``
     - |template database_yml| Default value: ``database.yml.erb``.
   * - ``gems``
     - |gems lwrp application_ruby_rails|
   * - ``precompile_assets``
     - |precompile_assets lwrp application_ruby|
