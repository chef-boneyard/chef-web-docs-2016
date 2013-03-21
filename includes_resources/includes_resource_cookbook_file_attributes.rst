.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - |backup resource cookbook_file|
   * - ``cookbook``
     - |cookbook resource cookbook_file|
   * - ``group``
     - |group windows security|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - |mode windows security|
   * - ``owner``
     - |owner windows security|
   * - ``path``
     - |path resource cookbook_file|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source resource cookbook_file|

.. note:: Use the ``owner`` and ``right`` attributes and avoid the ``group`` and ``mode`` attributes whenever possible. The ``group`` and ``mode`` attributes are not true |windows| concepts and are provided more for backward compatibility than for best practice.
