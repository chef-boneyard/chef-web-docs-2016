.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For back-end servers:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 4321
     - |service bookshelf|

       File system-backed, S3 API compatible service for storage and retrieval of cookbooks.
     - yes
   * - 
     - |service keepalived|

       Manages primary/secondary status of services between backends in the "HA" topology.
     - yes
   * - 
     - |service nginx|

       Defines virtual hosts for internal and external API request/response routing, external add-on request routing, as well as routing for front-end components to back-end components.
     - yes
   * - 
     - |service bifrost|

       Manages and restricts access to all objects, handles the RBAC aspect of user requests.
     - yes
   * - 9090
     - |service ocid|

       OAuth2 provider (e.g. used by Supermarket) based on chef server user.
     - yes
   * - 
     - |service erchef|

       Provides the complete REST API for Chef Server. In  EC11 and earlier, provided the API for data objects (cookbooks, nodes, clients, etc) but not RBAC objects (users, groups, containers)
     - yes
   * - 
     - |service expander|

       Captures modified objects published to rabbitmq, performs data transforms, submits to Solr for indexing. 
     - yes
   * - 
     - |service reindexer|

       (depricated) Manually resubmits data objects for Solr reindexing.
     - yes
   * - 8983
     - |service solr4|

       Indexing used for searching for various API data objects (nodes, data_bags, etc.). Used only for timely search results via the API, actual data used by platform is stored in postgres.
     - yes
   * - 5432
     - |service postgresql|

       Relational data store for all versions of CS/EC. In CS12, exclusive data store - couch has been removed. In HA topology, data is persisted on a drdb-configured volume.
     - yes
   * - 5672
     - |service rabbitmq|

       Messaging service used for funneling of information to/from inter-service communication (solr indexing, analytics activity, etc.).
     - yes
   * - 16379
     - |service redis_lb|

       Key-value store used in conjunction with nginx to route requests and populate request data used by erchef. Data is persisted on a drdb-configured volume in HA topology.
     - yes
   * - 7788-7799
     - |drbd| This port range must be open between all back end servers.
     - no
