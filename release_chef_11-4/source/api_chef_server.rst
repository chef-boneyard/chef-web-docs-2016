=====================================================
Chef Server API
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_api_chef_server/includes_api_chef_server.rst

Requirements
=====================================================
.. include:: ../../includes_api_chef_server/includes_api_chef_server_requirements.rst

Authentication Headers
=====================================================
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers.rst

Header Format
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_format.rst

Required Headers
-----------------------------------------------------
The following authentication headers are required:

.. list-table::
   :widths: 130 400
   :header-rows: 1

   * - Feature
     - Description
   * - ``Accept``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_accept.rst
   * - ``Host``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_host.rst
   * - ``X-Chef-Version``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_chef_version.rst
   * - ``X-Ops-Authorization-N``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_authorization.rst
   * - ``X-Ops-Content-Hash``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_content_hash.rst
   * - ``X-Ops-Sign``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_sign.rst
   * - ``X-Ops-Timestamp``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_timestamp.rst
   * - ``X-Ops-UserId``
     - .. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_userid.rst

Example
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_example.rst

Endpoints
=====================================================
For |chef hosted| and |chef private|, each authentication request must include ``/organizations/organization_name`` as part of the name for the endpoint. For the open source |chef server|, each authentication request must include ``/clients`` as part of the name of the endpoint. For example, the full endpoint for getting a list of roles on |chef hosted| or |chef private|:

.. code-block:: html

   GET /organizations/organization_name/roles

and for the same request, but to the open source |chef server|:

.. code-block:: html

   GET /clients/roles

The |api chef server| has the following endpoints:

* :doc:`api_chef_server_clients`
* :doc:`api_chef_server_clients_name`
* :doc:`api_chef_server_cookbooks`
* :doc:`api_chef_server_cookbooks_name`
* :doc:`api_chef_server_cookbooks_version`
* :doc:`api_chef_server_data_bag`
* :doc:`api_chef_server_data_bag_item`
* :doc:`api_chef_server_data_bag_name`
* :doc:`api_chef_server_environments`
* :doc:`api_chef_server_environments_name`
* :doc:`api_chef_server_environments_cookbook_name`
* :doc:`api_chef_server_environments_cookbook_version`
* :doc:`api_chef_server_environments_cookbooks`
* :doc:`api_chef_server_environments_node`
* :doc:`api_chef_server_environments_recipe`
* :doc:`api_chef_server_environments_role`
* :doc:`api_chef_server_nodes`
* :doc:`api_chef_server_nodes_name`
* :doc:`api_chef_server_roles`
* :doc:`api_chef_server_roles_name`
* :doc:`api_chef_server_roles_name_environments`
* :doc:`api_chef_server_roles_name_environments_name`
* :doc:`api_chef_server_sandboxes`
* :doc:`api_chef_server_sandboxes_id`
* :doc:`api_chef_server_search`
* :doc:`api_chef_server_search_index`
* :doc:`api_chef_server_user`


.. toctree::
   :hidden:

   api_chef_server_clients
   api_chef_server_clients_name
   api_chef_server_cookbooks
   api_chef_server_cookbooks_name
   api_chef_server_cookbooks_version
   api_chef_server_data_bag
   api_chef_server_data_bag_item
   api_chef_server_data_bag_name
   api_chef_server_environments
   api_chef_server_environments_cookbook_name
   api_chef_server_environments_cookbook_version
   api_chef_server_environments_cookbooks
   api_chef_server_environments_name
   api_chef_server_environments_node
   api_chef_server_environments_recipe
   api_chef_server_environments_role
   api_chef_server_nodes
   api_chef_server_nodes_name
   api_chef_server_principals_name
   api_chef_server_requirements
   api_chef_server_roles
   api_chef_server_roles_name
   api_chef_server_roles_name_environments
   api_chef_server_roles_name_environments_name
   api_chef_server_sandboxes
   api_chef_server_sandboxes_id
   api_chef_server_search
   api_chef_server_search_index
   api_chef_server_user





