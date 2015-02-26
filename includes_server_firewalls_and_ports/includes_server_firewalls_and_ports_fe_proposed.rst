.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For front-end servers:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service Name, Description
     - External
   * - 80, 443
     - |service nginx|

       .. include:: ../../includes_server_services/includes_server_services_nginx.rst
     - yes
   * - 9463
     - |service bifrost|

       .. include:: ../../includes_server_services/includes_server_services_bifrost.rst
     - no
   * - 9090
     - |service ocid|

       .. include:: ../../includes_server_services/includes_server_services_oc_id.rst
     - no
   * - 8000
     - |service erchef|

       .. include:: ../../includes_server_services/includes_server_services_erchef.rst
     - no
   * - 9683
     - |service bifrost| internal LB port
     - no
