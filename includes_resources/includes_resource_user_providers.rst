.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following providers to use the |resource user| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::User::Useradd``
     - ``user``
     - Yes
     - This is the default provider for all platforms.
   * - ``Chef::Provider::User::Pw``
     - ``pw``
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::User::Dscl``
     - ``dscl``
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::User::Windows``
     - ``windows``
     - 
     - This is the default provider for all |windows| platforms.
