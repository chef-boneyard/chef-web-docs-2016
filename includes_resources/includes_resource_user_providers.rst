.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::User::Useradd``
     - ``user``
     - This is the default provider for all platforms.
   * - ``Chef::Provider::User::Pw``
     - ``user``
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::User::Dscl``
     - ``user``
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::User::Windows``
     - ``user``
     - This is the default provider for all |windows| platforms.
