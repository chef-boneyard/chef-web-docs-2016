.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to manage groups. Users, clients, and groups can be organized into groups for easier management of permissions. When a Hosted Chef organization is created, there are three default groups within the org: admins, users, and clients. By default, all associated users get added to the users group, all existing and new clients get added to the clients group; and the user who created the organization account belongs to the admins group. Users with appropriate permissions can create new groups, edit existing groups, view current groups, and change the permissions bestowed by membership in the groups.

List
=====================================================
Note: In order to list groups in your organization, you need the list permission on the global level. Refer to the Managing Permissions article for more information about how to retrieve and update permissions.

In order to list groups in your organization:

1. Log in to the Hosted Chef Management Consoleand select the appropriate organization if the user is associated to more than one.

2. Click Groups on the main navigation menu.

This will direct you to this page where it lists out the groups in your organization:

   .. image:: ../../images/step_manage_server_hosted_group_list

View
=====================================================
Note: In order to view the details of a specific group, you need read permissions on that group. Refer to the Managing Permissions article for more information about how to retrieve and update permissions.

In order to view a specific group in your organization:

1. Log in to the Hosted Chef Management Console and select the appropriate organization if the user is associated to more than one.

2. Click Groups on the main navigation menu.

3. Click the name of the specific group you want to view.

This will display the list of users and clients within the group, as well as the groups it is a part of:

   .. image:: ../../images/step_manage_server_hosted_group_view.jpg

Edit
=====================================================
Note: In order to edit a specific group, you need update permissions on that group. Refer to the Managing Permissions article for more information about how to retrieve and update permissions.

In order to edit a specific group in your organization:

1. Log in to the Hosted Chef Management Console and select the appropriate organization if the user is associated to more than one.

2. Click Groups on the main navigation menu.

3. Click the Edit link next to the group you want to edit. Or, click the name of the specific group you want to edit, and in the group details page, click the Edit tab.

This will direct you to a page where you can select which users, clients, and groups to include in this group:

   .. image:: ../../images/step_manage_server_hosted_group_edit.jpg

Note: If you don't see an Edit link or tab, you don't have update permissions on that group.

4. Select the users and groups you want, and click Save Group

Add User
=====================================================
In order to add or remove a user from a group:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Add a user to the organization by following the Managing Organizations page.

3. Click Groups on the main navigation menu.

4. Click on Edit next to the group you want to add the user to.

5. Click on the checkbox next to the user's name, and push the Save Group button. You can remove a user from the group by unselecting the checkbox and clicking on the Save Group button.

Remove User
=====================================================
In order to add or remove a user from a group:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Add a user to the organization by following the Managing Organizations page.

3. Click Groups on the main navigation menu.

4. Click on Edit next to the group you want to remove the user from.

5. Un-click on the checkbox next to the user's name, and push the Save Group button.

Delete
=====================================================
In order to delete a specific group in your organization:

1. Log in to the Hosted Chef Management Console and select the appropriate organization if the user is associated to more than one.

2. Click Groups on the main navigation menu.

3. Click the Delete link next to the group you want to delete. Or, click the link of the specific group you want to delete, and in the group details page, click the Delete tab.

4. Click OK on the confirmation message box.

Note: If you don't see a Delete link or tab, you don't have delete permissions on that group. You cannot delete admins, users, and clients groups.


