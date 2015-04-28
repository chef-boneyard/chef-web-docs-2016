=====================================================
Authorization
=====================================================

.. include:: ../../includes_chef_auth/includes_chef_auth_authorization.rst

|chef server_title|
=====================================================
.. include:: ../../includes_server_rbac/includes_server_rbac.rst

The |chef server| uses organizations, groups, and users to define role-based access control:

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
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions.rst

Object Permissions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_object.rst

Global Permissions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_global.rst

Key Permissions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: This is only necessary after migrating a a client that uses a key from one |chef server| to another because the permissions for the key must be reset.

.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_key.rst

Default Groups
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_groups_default.rst

Multiple Organizations
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi_use.rst

Many Users, Same Repo
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef_repo/includes_chef_repo_many_users_same_repo.rst
