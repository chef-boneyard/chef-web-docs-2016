.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to call the provider from a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Script``
     - ``script``
     - When this short name is used, |chef| will determine the correct provider during the |chef| run.
   * - ``Chef::Provider::Script::Csh``
     - ``csh``
     - The provider that is used with the |csh| command interpreter.

