.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``compile_time``
     - Use to disable compile-time installation of |gems|. Recommended value: ``false``. The |chef client| will emit a warning when this setting is ``true``.
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``response_file``
     - Optional. |response_file|
   * - ``source``
     - Optional. |source resource package|
   * - ``version``
     - |version package|
