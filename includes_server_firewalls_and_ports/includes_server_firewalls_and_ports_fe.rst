.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For front-end servers in an |chef server| installation:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 80
     - |service nginx|
     - yes
   * - 443
     - |service nginx|
     - yes
   * - 8000
     - |service erchef|
     - no
   * - 9090
     - |service ocid|
     - no
   * - 9463
     - |service bifrost|
     - no
   * - 9680
     - |api chef server| internal LB port
     - no
   * - 9683
     - |service bifrost| internal LB port
     - no
