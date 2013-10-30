=====================================================
About the Server
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

There are three types of servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Server
     - Description
   * - Enterprise Chef
     - .. include:: ../../includes_chef/includes_chef_private.rst
   * - Hosted Enterprise Chef
     - .. include:: ../../includes_chef/includes_chef_hosted.rst
   * - Open Source Chef
     - .. include:: ../../includes_chef/includes_chef_open_source.rst

Components
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server_component_erchef_background.rst

The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another.

.. image:: ../../images/server_components.png

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - Bookshelf
     - .. include:: ../../includes_chef_server/includes_chef_server_component_bookshelf.rst

       All cookbooks are stored in a dedicated repository.
   * - WebUI
     - .. include:: ../../includes_chef_server/includes_chef_server_component_webui.rst
   * - Erchef
     - .. include:: ../../includes_chef_server/includes_chef_server_component_erchef.rst
   * - Message Queues
     - Messages are sent to the Search Index using the following components:
       
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_rabbitmq.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_expander.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_solr.rst

       All messages are added to a dedicated search index repository.
   * - Nginx
     - .. include:: ../../includes_chef_server/includes_chef_server_component_nginx.rst
   * - PostgreSQL
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst

For |chef hosted|, these components are mostly transparent because of the hosted interface for the |chef server|. For |chef private| and the open source |chef server|, these relationships can be more complex, depending on how the machines on which the |chef server| will run need to be deployed. 

Common Features
=====================================================
Each type of |chef server| provides the following features:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Feature
     - Description
   * - :doc:`Chef Server API </api_chef_server>`
     - The |api chef server| is used to provide access to objects on the |chef server|.
   * - :doc:`Data Bags </essentials_data_bags>`
     - A data bag is a global variable that is stored as |json| data and is accessible from a |chef server|. 
   * - :doc:`Environments </essentials_environments>`
     - An environment is a way to map an organization’s real-life workflow to what can be configured and managed when using |chef server|.
   * - :doc:`Node Objects </essentials_node_object>`
     - The node object consists of the run-list and node attributes, which is a |json| file that is stored on the |chef server|. The |chef client| gets a copy of the node object from the |chef server| during each |chef client| run and places an updated copy on the |chef server| at the end of each |chef client| run.
   * - :doc:`Roles </essentials_roles>`
     - A role is a way to define certain patterns and processes that exist across nodes in an organization as belonging to a single job function. 
   * - :doc:`Search </essentials_search>`
     - Search indexes allow queries to be made for any type of data that is indexed by the |chef server|, including data bags (and data bag items), environments, nodes, and roles. 
