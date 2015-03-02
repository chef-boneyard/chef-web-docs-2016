.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For back-end servers:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service Name, Description
     - External
   * - 4321
     - |service bookshelf|

       .. include:: ../../includes_server_services/includes_server_services_bookshelf.rst
     - yes
   * - 
     - |service keepalived|

       .. include:: ../../includes_server_services/includes_server_services_keepalived.rst
     - yes
   * - 80, 443, 9683
     - |service nginx|

       .. include:: ../../includes_server_services/includes_server_services_nginx.rst

       .. note:: Port 9683 is used to internally load balance the |service bifrost| service.
     - yes
   * - 9683
     - |service bifrost|

       .. include:: ../../includes_server_services/includes_server_services_bifrost.rst
     - yes
   * - 9090
     - |service ocid|

       .. include:: ../../includes_server_services/includes_server_services_oc_id.rst
     - yes
   * - 8000
     - |service erchef|

       .. include:: ../../includes_server_services/includes_server_services_erchef.rst
     - yes
   * - 
     - |service expander|

       .. include:: ../../includes_server_services/includes_server_services_expander.rst
     - yes
   * - 8983
     - |service solr4|

       .. include:: ../../includes_server_services/includes_server_services_solr4.rst
     - no
   * - 5432
     - |service postgresql|

       .. include:: ../../includes_server_services/includes_server_services_postgresql.rst
     - no
   * - 5672
     - |service rabbitmq|

       .. include:: ../../includes_server_services/includes_server_services_rabbitmq.rst
     - no
   * - 16379
     - |service redis_lb|

       Key-value store used in conjunction with |nginx| to route requests and populate request data used by the |chef server|. Data may be persisted on a |drbd| configured volume in a high availability configuration.
     - no
   * - 7788-7799
     - |drbd| This port range must be open between all back end servers in a high availability configuration that uses |drbd|.
     - no
