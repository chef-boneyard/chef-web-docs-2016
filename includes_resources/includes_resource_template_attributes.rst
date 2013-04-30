.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - |backup resource template|
   * - ``cookbook``
     - |cookbook resource template|
   * - ``group``
     - |group windows security|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - |local resource template|
   * - ``mode``
     - |mode windows security|
   * - ``owner``
     - |owner windows security|
   * - ``path``
     - |path file| Default value: ``name``.
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source file_location| Can be used to distribute specific files to specific platforms (see the section "File Specificity", below). Default value: basename of ``name`` plus ``.erb``.
   * - ``variables``
     - |variables for template|
