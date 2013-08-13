.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``application_pool``
     - |application_pool site|
   * - ``bindings``
     - |bindings|
   * - ``host_header``
     - |host_header| Default value: all host headers.
   * - ``path``
     - |path lwrp iis_pool|
   * - ``port``
     - |port iis| Default value: ``80``.
   * - ``protocol``
     - |protocol http|
   * - ``site_id``
     - |id site| If this is not specified, |microsoft iis| will generate a unique identifier.
   * - ``site_name``
     - |name site|
