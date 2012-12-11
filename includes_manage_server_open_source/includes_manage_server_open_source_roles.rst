.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. include:: ../../includes_role/includes_role.rst

The **Management Console** allows users to create, read, update, and delete roles.

Listing Roles
=====================================================
To list roles:
1. Log on to the **Management Console**.
2. Click **Roles** on the main navigation menu.

Viewing a Role
=====================================================
Viewing a role shows the recipes and roles included in the role, as well as a tree view of the attributes associated with the role. In order to view a specific role, on the roles page, click the link of the specific role you want to view.

Creating a Role
=====================================================
The role creation page allows you to add recipes and roles to the role you are editing. There is also a JSON editor for editing, adding and removing JSON attributes associated with the role. To create a role:

1. Login to the **Management Console** and navigate to the Roles tab.
2. Click **Create** on the sub navigation bar.
3. Give the role a name and an optional description.
4. Continue onto editing the role, as described in the next section. Continue with your normal edit steps and click **Create Role** to save the new role.

Editing a Role
=====================================================
In any of the following actions where a drag is involved, you must drag the item to the lighter grey area of the target list.

1. To add a role to the role being edited, drag it from **Available Roles** to **Run List**.

.. image:: ../../images/includes_manage_server_open_source_role_edit_1.png

2. To add a recipe to the role being edited, drag it from **Available Recipes** to **Run List**.

.. image:: ../../images/includes_manage_server_open_source_role_edit_2.png

3. To remove a role or recipe from the role being edited, drag it from the **Run List** back to the respective **Available** section.

4. Click **Save Role** to save.

Modifying Role Default and Override Attributes
=====================================================
You can edit the override attributes of a role, to override the values of an included recipe or role, and you can edit the default attributes of a role to specify attributes that do not exist in included recipes and roles. To do this, click **json** from the **Default and Override Attributes** tree on the bottom left. Then, click the **Editor** tab on the right, click the green add button under the **Editor** tab, enter a name as the key and a body as the value and click **Add Attribute**. The following figures show the **Default and Override Attributes** tree and the JSON editor.

.. image:: ../../images/includes_manage_server_open_source_role_attributes.png

Using the Source tab
=====================================================
1. Enter the JSON body of your role in the editor, and click the **Load JSON from source** button.
2. Click the **Create Role** or **Save Role** button to save the role. The following figure shows an example.

.. image:: ../../images/includes_manage_server_open_source_role_json.png

Deleting a Role
=====================================================
In order to delete a role:

1. Login to the **Management Console** and navigate to the **Roles** tab.
2. Click the **Delete**link next to the name of the role you want to delete, and click **OK** on the confirmation message box. Or, click the role to view its details, and click **Delete** on the sub navigation menu. 