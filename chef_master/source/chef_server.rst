=====================================================
About the |chef server_title|
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

Components
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server_component_erchef_background.rst

The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another.

.. image:: ../../images/server_components.svg

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

For the hosted |chef server|, these components are mostly transparent because of the hosted interface for the |chef server|. When the |chef server| is deployed on-premises, these relationships can be more complex, depending on how the machines on which the |chef server| will run need to be deployed. 

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
   * - :doc:`Data Bags </data_bags>`
     - A data bag is a global variable that is stored as |json| data and is accessible from a |chef server|. 
   * - :doc:`Environments </environments>`
     - An environment is a way to map an organization’s real-life workflow to what can be configured and managed when using |chef server|.
   * - :doc:`Node Objects </nodes>`
     - The node object consists of the run-list and node attributes, which is a |json| file that is stored on the |chef server|. The |chef client| gets a copy of the node object from the |chef server| during each |chef client| run and places an updated copy on the |chef server| at the end of each |chef client| run.
   * - :doc:`Roles </roles>`
     - A role is a way to define certain patterns and processes that exist across nodes in an organization as belonging to a single job function. 
   * - :doc:`Search </chef_search>`
     - Search indexes allow queries to be made for any type of data that is indexed by the |chef server|, including data bags (and data bag items), environments, nodes, and roles.
   * - |supermarket|
     - |supermarket| is the new community site for |chef|, located at |url community|.

Premium Features
=====================================================
The following premium feature are available for use with the |chef server|:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Feature
     - Description
   * - |chef analytics_title|
     - |chef analytics| provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred. Actions details are tracked on the |chef server| and are visible to users from the |chef analytics| web user interface.
   * - |chef ha_title|
     - Availability supports out-of-the-box and custom high availability scenarios, including using |drbd| and |amazon aws|.
   * - |chef manage_title|
     - The |chef manage| web user interface is used to manage objects that are stored on the |chef server|, including data bags, attributes, run-lists, roles, environments, and cookbooks. Additionally, reports are views into what happened during every |chef client| run that has occurred across all of the nodes that are under management by |chef|.
   * - |push jobs_title|
     - |push jobs| allows jobs to be run against nodes independently of a |chef client| run. A job is an action or a command to be executed against a subset of nodes; the nodes against which a job is run are determined by the results of a search query made to the |chef server|. 
   * - |chef replication_title|
     - |chef replication| provides a way to asynchronously distribute cookbook, environment, role, and data bag data from a single, primary |chef server| to one (or more) replicas of that |chef server|.
   * - |reporting_title|
     - The |reporting| feature of the |chef server| is used to keep track of what happened during the execution of |chef client| runs across all of the infrastructure being managed by |chef|. Reports can be generated for the entire organization and they can be generated for specific nodes.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install.rst


