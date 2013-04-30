.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to call the provider from a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Package``
     - ``package``
     - When this short name is used, |chef| will attempt to determine the correct provider during the |chef| run.
   * - ``Chef::Provider::Package::Smartos``
     - ``smartos_package``
     - The provider that is used with the |smartos| platform.
