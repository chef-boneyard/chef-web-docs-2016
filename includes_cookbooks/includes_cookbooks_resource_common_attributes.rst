.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following attributes are common to every resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Attribute
     - Description
   * - ``ignore_failure``
     - |ignore_failure| Default value: ``false``.
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``retries``
     - |retries| Default value: ``0``.
   * - ``retry_delay``
     - |retry_delay| Default value: ``2``.
   * - ``supports``
     - Use to specify a hash of options that contains hints about the capabilities of a resource. |chef| may use these hints to help identify the correct provider. This attribute is only used by a small number of providers, including ``User`` and ``Service``.