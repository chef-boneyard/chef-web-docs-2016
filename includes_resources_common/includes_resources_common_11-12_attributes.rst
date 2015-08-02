.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following properties are common to every resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Property
     - Description
   * - ``ignore_failure``
     - |ignore_failure| Default value: ``false``.
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``retries``
     - |retries| Default value: ``0``.
   * - ``retry_delay``
     - |retry_delay| Default value: ``2``.
   * - ``sensitive``
     - |sensitive| Default value: ``false``. This property only applies to the |resource file| and |resource template| resources.
   * - ``supports``
     - |supports resources| This property is only used by a small number of providers, including |resource user| and |resource service|.
