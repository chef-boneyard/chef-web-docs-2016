.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``clear_sources``
     - **Ruby Types:** TrueClass, FalseClass

       |clear_sources| Default value: ``false``.
   * - ``gem_binary``
     - **Ruby Type:** String

       |gem_binary resource package| By default, the same version of |ruby| that is used by the |chef client| will be installed.
   * - ``options``
     - **Ruby Type:** String

       |command options|
   * - ``package_name``
     - **Ruby Types:** String, Array

       |name package| |resource_block_default| |see syntax|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``source``
     - **Ruby Type:** String

       Optional. The URL at which the gem package is located.
   * - ``timeout``
     - **Ruby Types:** String, Integer

       |timeout|
   * - ``version``
     - **Ruby Types:** String, Array

       |version package|
