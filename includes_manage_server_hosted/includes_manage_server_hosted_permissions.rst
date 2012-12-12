.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to manage permissions.


Viewing and Editing Permissions
=====================================================
The Hosted Chef Management Console allows users with grant permissions to view and modify permissions on Roles, Nodes, Cookbooks, Databags, Clients, and Groups. For each type of object listed, there are two levels of permission settings: the global level and object level.

Permissions on the global level of an object type determines whether you are able to create new objects of this type and whether you can view the list of the objects of this type (for example, creating new groups and listing groups). Permissions on the object level determines whether you are able to do anything with that specific object (for example, showing, editing, or deleting the "foobar" group).

For more information on how permissions work, and default permissions see the Hosted Chef Authorization page.

Manage Global Permissions
-----------------------------------------------------
Note: Roles are used here as an example, but it works the same way for Nodes, Cookbooks, Databags, Clients, and Groups. The permissions on Databag Items are inherited from their parent Databags.

In order to view and update the global level permissions on an object type (Roles in this case):

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click the Roles tab on the main navigation menu.

3. Click the Permissions tab on the sub-navigation menu, select or deselect the permission checkboxes as appropriate, and click Update Permissions.

   .. image:: ../../images/step_manage_server_hosted_permission_global.jpg

Manage Object Permissions 
-----------------------------------------------------
In order to view and update the object-level permissions on a specific object (a role, in this example):

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click the Roles tab on the main navigation menu.

3. Click the role to view the details of the role.

4. Click the Permissions tab on the sub-navigation menu, select or deselect the permission checkboxes as appropriate, and click Update Permissions.

   .. image:: ../../images/step_manage_server_hosted_permission_object.jpg

Updating permissions for the billing admin
=====================================================
You can also change who is the billing admin, the users that are able to see and edit the billing information on the account:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. If the user is not a member of the organization yet, add them to it by following the directions on the Managing Organizations page.

3. Click on the Groups tab.

4. Click on the edit link next to the billing-admins group: 

   .. image:: ../../images/step_manage_server_hosted_permission_billing_admin_1.jpg

5. Check the checkbox for any users you want to be billing admins, and then click on the Save Group button:

   .. image:: ../../images/step_manage_server_hosted_permission_billing_admin_2.jpg


