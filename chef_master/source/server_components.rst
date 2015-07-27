=====================================================
|chef server_title| Components
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

.. include:: ../../includes_chef_server/includes_chef_server_component_erchef_background.rst

The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another.

.. image:: ../../images/server_components.svg

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - Nginx
     - .. include:: ../../includes_chef_server/includes_chef_server_component_nginx.rst
   * - Manage
     - .. include:: ../../includes_chef_server/includes_chef_server_component_webui.rst

       The |chef manage| uses the |api chef server| for all communication to the |chef server|.
   * - Chef Server
     - .. include:: ../../includes_chef_server/includes_chef_server_component_erchef.rst
   * - Bookshelf
     - .. include:: ../../includes_chef_server/includes_chef_server_component_bookshelf.rst

       All cookbooks are stored in a dedicated repository.
   * - Message Queues
     - Messages are sent to the Search Index using the following components:
       
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_rabbitmq.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_expander.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_solr.rst

       All messages are added to a dedicated search index repository.
   * - PostgreSQL
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst
