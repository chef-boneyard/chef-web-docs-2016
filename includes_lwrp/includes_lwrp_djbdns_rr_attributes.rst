.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cwd``
     - The current working directory in which the |tinydns| data file is located.
   * - ``fqdn``
     - The |fqdn| of the host.
   * - ``ip``
     - Required. The IP address.
   * - ``type``
     - The record type: ``ns``, ``childns``, ``host``, ``alias``, or ``mx``. Default value: ``host``.
