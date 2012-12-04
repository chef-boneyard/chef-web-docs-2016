.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Resource::Script``
     - ``script``
     - When this short name is used, |chef| will determine the correct provider during the |chef| run.
   * - ``Chef::Resource::Script::Bash``
     - ``bash``
     - The provider that is used with the |bash| command interpreter.
   * - ``Chef::Resource::Script::Csh``
     - ``csh``
     - The provider that is used with the |csh| command interpreter.
   * - ``Chef::Resource::Script::Perl``
     - ``perl``
     - The provider that is used with the |perl| command interpreter.
   * - ``Chef::Resource::Script::Python``
     - ``python``
     - The provider that is used with the |python| command interpreter.
   * - ``Chef::Resource::Script::Ruby``
     - ``ruby``
     - The provider that is used with the |ruby| command interpreter.
