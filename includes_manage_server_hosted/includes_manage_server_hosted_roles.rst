.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, update, and delete roles.




Listing Roles in the Organization
=====================================================
To list roles in your organization:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Roles on the main navigation menu.

   .. image:: ../../images/step_manage_server_hosted_role_list.jpg

Note: You need list permissions on the global roles level to see the list of roles.

Viewing a Role
=====================================================
Viewing a role shows the recipes and roles included in the role, as well as a tree view of the attributes associated with the role.

In order to view a specific role:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Roles on the main navigation menu.

3. Click on the name of the specific role you want to view. This will bring you to a page where you can see the run_list and attributes for the role:

   .. image:: ../../images/step_manage_server_hosted_role_view.jpg

Note: You need read permissions on the role to view it.

Creating a Role
=====================================================
The role create page allows you to create a role. You can add recipes and roles to the run list. There is also a JSON editor for editing, adding and removing JSON attributes associated with the role.

In order to create a role:

1. Login to the Hosted Chef Management Console and navigate to the Roles tab.

2. Make sure that the correct environment is selected at the top of the screen, select None if you want this role to work the same on all environments. Click Create on the sub navigation bar.

3. Give the role a name and an optional description.

4. Continue onto editing the role, by adding to it's run_list and editing the attributes. This is described further in the next section.

5. When you have finished editing the role, click Create Role to save the new role.

If you selected a custom environment and need the run list setup differently with another environment, you can now change the environment and edit the run list. If an environment is selected from the drop down at the top of the page, you will only see the run_list and attributes specific to this environment. You can see the default run list and attributes by selecting None or _default from the drop down.

Note: You need create permissions on the global roles level to create new roles.

Editing a Role
=====================================================
1. Login to the Hosted Chef Management Console and navigate to the Roles tab.

2. Make sure that the correct environment is selected at the top of the screen, select None if you want this role to work the same on all environments. Click on edit next to the role you want to edit.

3. To add a role or recipe to the role being edited, drag it from Available Roles or Available Recipes to Run List:

   .. image:: ../../images/step_manage_server_hosted_role_edit_1.jpg

4. To remove a role or recipe from the role being edited, drag it from the Run List back to an Available section:

   .. image:: ../../images/step_manage_server_hosted_role_edit_2.jpg

The Active Run List panel on the right shows the current active run list for the environment selected with the drop down box at the top of the page. If the None or _default environments are selected it shows the default run list. If you've selected an environment that does not have a specific run list yet it will also show the default run list. If you edit the run list while an environment is selected at the top of the page, your changes will be saved as a run list specific for nodes in that environment.

5. Click Save Role to save.

Note: You need update permissions on the role to edit it.

Modifying Role Default and Override Attributes
=====================================================
You can edit the override Attributes of a role, to override the values of an included recipe or role, and you can edit the default attributes of a role to specify attributes that do not exist in included recipes and roles. You can use the Editor or Source tabs on this page to edit the attributes. With the Editor tab you can edit the attributes by selecting the location on the tree and adding the details. You can use the Source tab to paste in JSON directly.

Note: You need update permissions on the role to edit the attributes.

Using the Editor tab
-----------------------------------------------------
1. Click on the plus sign next to "json" and select "default" or "override" from the tree on the left, depending on the type of attribute you want to create. If you're unsure, you should select "default" unless you are trying to override a default attribute that is already set in the node or in a recipe.

2. Click on the Editor tab on the right.

3. Push the green add button under the Editor tab: 

4. Select a type of attribute from the drop down box. If you are unsure, you most likely want "string" if the value is text, or "number" if the value is a number.

5. Enter a name as the key and a body as the value and click Add Attribute. The following figure shows the Default and Override Attributes tree and the JSON editor.

   .. image:: ../../images/step_manage_server_hosted_role_edit_editor.jpg

6. Click the Create Role or Save Role button to save the role.

Using the Source tab
-----------------------------------------------------
1. Enter the JSON body in the editor, and click the Load JSON from source button: 

   .. image:: ../../images/step_manage_server_hosted_role_edit_source.jpg

2. Click the Create Role or Save Role button to save the role.

Editing the Roles on a Node's Run List
To edit the roles that are in a node's run list, follow the Managing Nodes page. You can also use Knife to edit the run list for the node.

Deleting a Role
=====================================================
In order to delete a role:

1. Login to the Hosted Chef Management Console and navigate to the Roles tab.

2. Click the Delete link next to the name of the role you want to delete, and click OK on the confirmation message box. Or, click the role to view its details, and click Delete on the sub navigation menu.

Note: You need delete permissions on the role to delete it. If you don't have delete permissions, you may not see a Delete link or tab.



