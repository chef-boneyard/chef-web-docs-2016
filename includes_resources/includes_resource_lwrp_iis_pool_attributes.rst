.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``max_proc``
     - The maximum number of worker processes available to service requests to an application pool.
   * - ``pipeline_mode``
     - The pipeline mode with which an application pool is created.
   * - ``private_mem``
     - The maximum amount of private memory (in KB) that a worker process can consume before the application pool will recycle. A value of ``0`` means there is no limit.
   * - ``pool_name``
     - The name of the application pool.
   * - ``runtime_version``
     - The version of |microsoft dotnet| that will be used by the runtime.
   * - ``thirty_two_bit``
     - Indicates whether an application pool can run in 64-bit mode. Default value: ``false``.
