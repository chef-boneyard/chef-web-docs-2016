.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following attributes are common to every resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Attribute
     - Description
   * - ``ignore_failure``
     - Use to continue running a recipe if a resource fails for any reason. Default value: ``false``.
   * - ``provider``
     - Use to specify the class name of a provider for use with a resource.
   * - ``retries``
     - Use to specify the number of times to catch exceptions and retry the resource. Default value: ``0``.
   * - ``retry_delay``
     - Use to specify the retry delay (in seconds). Default value: ``2``.
   * - ``supports``
     - Use to specify a hash of options that contains hints about the capabilities of a resource. |chef| may use these hints to help identify the correct provider. This attribute is only utilized by a small number of providers, including ``User`` and ``Service``.