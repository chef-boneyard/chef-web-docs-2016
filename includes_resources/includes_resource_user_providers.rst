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
     - The default provider for the |resource user| resource.
   * - ``Chef::Provider::User::Pw``
     - ``user``
     - The provider that is used with the |freebsd| platform.
   * - ``Chef::Provider::User::Dscl``
     - ``user``
     - The provider that is used with the |mac os x| platform.
   * - ``Chef::Provider::User::Windows``
     - ``user``
     - The provider that is used with all |windows| platforms.
