.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following setting is often modified from the default as part of the tuning effort for the |service postgresql| service. 

Commonly tuned values include:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['max_connections']``
     - |max_connections| This value should only be tuned when the ``erchef['db_pool_size']`` value used by the |service erchef| service is modified. Default value: ``200``.
