.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For front-end servers:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
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
