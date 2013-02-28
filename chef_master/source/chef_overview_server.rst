=====================================================
The Chef Server
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

There are three types of |chef| servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Flavor
     - Description
   * - .. image:: ../../images/icon_chef_hosted.png
     - .. include:: ../../includes_chef/includes_chef_hosted.rst

       |chef hosted| is based on the idea that an infrastructure management tool should be built around a collection of API primitives. By using an API to talk to a cloud provider (such as |amazon vpc|, |windows azure|, or |rackspace|), it allows the freedom to think of those primitives as building blocks. |chef| only needs to know about the desired state, how it should get there, and what the proper functionality of that desired state should be.
   * - .. image:: ../../images/icon_chef_private.png
     - .. include:: ../../includes_chef/includes_chef_private.rst

       |chef private| evolved out of a need for customers to have the same functionality provided by |chef hosted|, but located behind the firewall. |chef private| is the same as |chef hosted| in every other way. |chef hosted| is the largest |chef private| deployment in the world.
   * - .. image:: ../../images/icon_chef_open.png
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


Common Features
=====================================================
Each flavor of the |chef server| provides the following features:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Feature
     - Description
   * - :doc:`Node objects </essentials_node_object>`
     - The node object consists of the run-list and node attributes, which is a |json| file that is stored on the |chef server|. The |chef client| gets a copy of the node object from the |chef server| during each |chef| run and places an updated copy on the |chef server| at the end of each |chef| run.
   * - :doc:`Search </essentials_search>`
     - Search indexes allow queries to be made for any type of data that is indexed by the |chef server|, including data bags (and data bag items), environments, nodes, and roles. 
   * - :doc:`Data bags </essentials_data_bags>`
     - A data bag is a global variable that is stored as |json| data and is accessible from a |chef server|. 
   * - :doc:`Environments </essentials_environments>`
     - An environment is a way to map an organization’s real-life workflow to what can be configured and managed when using |chef server|.
   * - :doc:`Roles </essentials_roles>`
     - A role is a way to define certain patterns and processes that exist across nodes in a |chef| organization as belonging to a single job function. 
   * - :doc:`Chef Server API </api_chef_server>`
     - The |api chef server| is used to provide access to objects on the |chef server|.