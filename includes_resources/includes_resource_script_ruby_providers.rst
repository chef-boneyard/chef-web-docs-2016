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
     - When this short name is used, the |chef client| will determine the correct provider during the |chef client| run.
   * - ``Chef::Provider::Script::Ruby``
     - ``ruby``
     - The provider that is used with the |ruby| command interpreter.
