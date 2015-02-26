.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. Anything listed as external=yes for tiered/ha, that firewall should be configured for those ports.
.. Anything listed as external=yes for standalone, that firewall should be configured for those ports.

For back-end servers in a tiered |chef server| installation:

.. list-table::
   :widths: 60 420
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
     - 
   * - 9671, 9683 (oc_bifrost on ILB)
     - |service nginx|

       .. include:: ../../includes_server_services/includes_server_services_nginx.rst
     - 
   * - 8983
     - |service solr4|

       .. include:: ../../includes_server_services/includes_server_services_solr4.rst
     - 
   * - 5432
     - |service postgresql|

       .. include:: ../../includes_server_services/includes_server_services_postgresql.rst
     - 
   * - 5672
     - |service rabbitmq|

       .. include:: ../../includes_server_services/includes_server_services_rabbitmq.rst
     - 
   * - 16379
     - |service redis_lb|

       Key-value store used in conjunction with nginx to route requests and populate request data used by erchef. Data is persisted on a drdb-configured volume in HA topology.
     - 
   * - 4321
     - |service bookshelf|

       .. include:: ../../includes_server_services/includes_server_services_bookshelf.rst
     - 
   * - 8000
     - |service erchef|

       .. include:: ../../includes_server_services/includes_server_services_erchef.rst
