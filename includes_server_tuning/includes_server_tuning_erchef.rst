.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from their out-of-the-box default settings as part of the tuning effort for the |service erchef| service. 

Commonly tuned values include:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``erchef['db_pool_size']``
     - |db_pool_size| This value should be increased if failures indicate that the |service erchef| service ran out of connections. This value should be tuned in conjunction with the ``postgresql['max_connections']`` setting for |postgresql|. Default value: ``20``.

 
