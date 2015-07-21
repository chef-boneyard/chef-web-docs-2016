=====================================================
Organizations, Groups, and Users
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

Multiple Organizations
=====================================================
.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_orgs_multi_use.rst

Permissions
=====================================================
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions.rst

Object Permissions
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_object.rst

Global Permissions
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_global.rst

Client Key Permissions
-----------------------------------------------------
.. note:: This is only necessary after migrating a client from one |chef server| to another. Permissions must be reset for client keys after the migration.

.. include:: ../../includes_server_rbac/includes_server_rbac_clients.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_key.rst

Default Permissions
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_groups.rst

Groups
=====================================================
.. include:: ../../includes_server_rbac/includes_server_rbac_groups.rst

Default Groups
-----------------------------------------------------
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default.rst

``admins``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default_admins.rst

``billing_admins``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default_billing_admins.rst

``clients``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default_clients.rst

``users``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default_users.rst

|chef validator|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_security/includes_security_chef_validator.rst
 
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_default_validator.rst

|push jobs_title| Groups
-----------------------------------------------------
.. include:: ../../includes_push_jobs/includes_push_jobs.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_groups_push_jobs.rst

|reporting_title| Groups
-----------------------------------------------------
.. include:: ../../includes_reporting/includes_reporting.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_groups_reporting.rst

Manage Organizations
=====================================================
The following commands are built-in to the |chef server ctl| command line tool:

org-create
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_create_options.rst

org-delete
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_delete.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_delete_syntax.rst

org-list
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_list_options.rst

org-show
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_show.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_show_syntax.rst

org-user-add
-----------------------------------------------------
.. warning:: Early RC candidates for the |chef server| 12 release named this command ``org-associate``. This is the same command, with the exception of the ``--admin`` flag, which is added to the command (along with the rename) for the upcoming final release of |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_user_add.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_user_add_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_user_add_options.rst

org-user-remove
-----------------------------------------------------
.. warning:: Early RC candidates for the |chef server| 12 release named this command ``org-disociate``. This is the same command, but renamed for the upcoming final release of |chef server| 12.

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_user_remove.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_org_user_remove_syntax.rst


Manage Users
=====================================================
The following commands are built-in to the |chef server ctl| command line tool:

user-create
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_create_options.rst

user-delete
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_delete.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_delete_syntax.rst

user-edit
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_edit.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_edit_syntax.rst

user-list
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_list_options.rst

user-show
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show.rst

**Syntax**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show_syntax.rst

**Options**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_user_show_options.rst