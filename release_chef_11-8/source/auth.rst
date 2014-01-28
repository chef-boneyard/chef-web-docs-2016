=====================================================
Authentication and Authorization
=====================================================

.. include:: ../../includes_chef_auth/includes_chef_auth.rst

Authentication
=====================================================
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication.rst

|chef validator|
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_chef_validator.rst

During a |chef client| Run
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_chef_run.rst

From the Web Interface
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_webui.rst

knife exec
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_exec_authenticated_api_requests.rst

|knife| Plugins
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_using_authenticated_requests.rst

Other Options
-----------------------------------------------------
The most common ways to interact with the |chef server| using the |api chef server| abstract the API from the user. That said, the |api chef server| can be interacted with directly. The following sections describe a few of the ways that are available for doing that.

|curl|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_other_curl.rst

|pychef|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_other_pychef.rst

|ruby|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_other_ruby.rst

Debug Authentication Issues
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_debug.rst

Authorization
=====================================================
.. include:: ../../includes_chef_auth/includes_chef_auth_authorization.rst

|chef server oec|
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac.rst

|chef server oec| uses organizations, groups, and users to define role-based access control:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_server_organization.png
     - .. include:: ../../includes_server_rbac/includes_server_rbac_orgs.rst
   * - .. image:: ../../images/icon_server_group.png
     - .. include:: ../../includes_server_rbac/includes_server_rbac_groups.rst
   * - .. image:: ../../images/icon_server_users.png
     - .. include:: ../../includes_server_rbac/includes_server_rbac_users.rst
   * - .. image:: ../../images/icon_chef_client.png
     - .. include:: ../../includes_server_rbac/includes_server_rbac_clients.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_workflow.rst

Permissions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions.rst

Object Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_object.rst

Global Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_global.rst

Default Groups
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_groups_default.rst

Multiple Organizations
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi_use.rst

Open Source |chef server|
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authorization_open_source.rst

|api chef server|
=====================================================
.. include:: ../../includes_api_chef_server/includes_api_chef_server.rst

Authentication Headers
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers.rst

Header Format
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_format.rst

Required Headers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_example.rst

Endpoints
-----------------------------------------------------
For |chef hosted| and |chef private|, each authentication request must include ``/organizations/organization_name`` as part of the name for the endpoint. For the open source |chef server|, each authentication request must include ``/clients`` as part of the name of the endpoint. For example, the full endpoint for getting a list of roles on |chef hosted| or |chef private|:

.. code-block:: html

   GET /organizations/organization_name/roles

and for the same request, but to the open source |chef server|:

.. code-block:: html

   GET /clients/roles

For more information about the |api chef server| endpoints see :doc:`api_chef_server`.

