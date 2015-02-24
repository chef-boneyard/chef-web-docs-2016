.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a standalone installation, and if host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service Name, Description
     - External
   * - 4321
     - |service bookshelf|

       File system-backed, S3 API compatible service for storage and retrieval of cookbooks.
     - no
   * - 80, 443
     - |service nginx|

       Defines virtual hosts for internal and external API request/response routing, external add-on request routing, as well as routing for front-end components to back-end components.
     - yes
   * - 9463
     - |service bifrost|

       Manages and restricts access to all objects, handles the RBAC aspect of user requests.
     - no
   * - 9090
     - |service ocid|

       OAuth2 provider (e.g. used by Supermarket) based on chef server user.
     - no
   * - 8000
     - |service erchef|

       Provides the complete REST API for Chef Server. In  EC11 and earlier, provided the API for data objects (cookbooks, nodes, clients, etc) but not RBAC objects (users, groups, containers)  
     - no
   * - 9680
     - |api chef server| internal LB port
     - no
   * - 9683
     - |service bifrost| internal LB port
     - no
   * - 8983
     - |service solr4|

       Indexing used for searching for various API data objects (nodes, data_bags, etc.). Used only for timely search results via the API, actual data used by platform is stored in postgres.
     - no
   * - 5432
     - |service postgresql|

       Relational data store for all versions of CS/EC. In CS12, exclusive data store - couch has been removed. In HA topology, data is persisted on a drdb-configured volume.
     - no
   * - 5672
     - |service rabbitmq|

       Messaging service used for funneling of information to/from inter-service communication (solr indexing, analytics activity, etc.).
     - no
   * - 16379
     - |service redis_lb|

       Key-value store used in conjunction with nginx to route requests and populate request data used by erchef. Data is persisted on a drdb-configured volume in HA topology.
     - no

