.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, update, and delete nodes. You can also manage nodes with the command line tool Knife.

List
=====================================================
In order to list nodes in your organization:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Nodes on the main navigation menu.

   .. image:: ../../images/step_manage_server_hosted_node_list.jpg

Note: If a specific environment is selected on the top of the page, then only the nodes in that environment will be shown. You also need list permissions on the global nodes level to list the nodes.

View
=====================================================
Viewing a node shows the recipes and roles in the node's run list, as well as the node's attributes.

In order to view a specific node:

1. Login to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click on the Nodes tab.

3. Click on the name of the node you want to view.

On this page you can see the roles and recipes in the node's run list, as well as an expandable tree view of the JSON attributes on the node.

   .. image:: ../../images/step_manage_server_hosted_node_view.jpg

Note: You need read permissions on the node to view it.

Add
=====================================================
The node create page lists all available recipes and roles in the organization, and allows you to include these in the run list of the node you are creating. There is also a JSON editor for editing, adding and removing the node's attributes.

A node is also created the first time you run chef-client, or when you use Knife Bootstrap commands.

In order to create a node through the Management Console:

1. Login to the Hosted Chef Management Console and select an organization.

2. Click on the Nodes tab.

3. Click Create on the sub navigation bar.

   .. image:: ../../images/step_manage_server_hosted_node_add.jpg

4. Give the node a name and select an Environment for the node.

5. Edit the node, further information is in the next section. Click Create Node to save the new node when you are done.

Note: You need create permissions on the global nodes level to create a node.

Edit
=====================================================
1. Login to the Hosted Chef Management Console and select an organization.

2. Select the Nodes tab.

3. Click on the Edit link next to the node you want to edit.

4. To add a role or recipe to the node being edited, drag it from Available Roles or Available Recipes to Run List:

   .. image:: ../../images/step_manage_server_hosted_node_edit_1.jpg

5. To remove a role or recipe from the node being edited, drag it from the Run List back to an Available section:

   .. image:: ../../images/step_manage_server_hosted_node_edit_2.jpg

6. Click Save Node to save.

Note: You need update permissions on the node to edit it.

Move Node to Environment
=====================================================
You can move the node to an environment with the drop down box on the top of this page. More information on this can be found on the Managing Environments page.

Modify Attributes
=====================================================
To modify the Attributes of a node, such that they override the values of the included recipe or role, you can use the Editor or Source tabs on this page. With the Editor tab you can edit the attributes by selecting the location on the tree and adding the details. You can use the Source tab to paste in JSON directly.

Note: You need update permissions on the node to edit the attributes.

Editor Tab
-----------------------------------------------------
1. Select "json" from the tree on the left and click on the Editor tab on the right.

2. Push the green add button under the Editor tab: 

3. Enter a name as the key and a body as the value and click Add Attribute. The following figure shows the Attributes tree and the JSON editor.

   .. image:: ../../images/step_manage_server_hosted_node_edit_editor.jpg

4. Click the Create Node or Save Node button to save the node.

Source Tab
-----------------------------------------------------
1. Enter the JSON body in the editor, and click the Load JSON from source button: 

   .. image:: ../../images/step_manage_server_hosted_node_edit_source.jpg

2. Click the Create Node or Save Node button to save the node.

Delete
=====================================================
In order to delete a node:

1. Login to the Hosted Chef Management Console and select an organization.

2. Click on the Nodes tab.

2. Click the Delete link next to the name of the node you want to delete, and click OK on the confirmation message box. Or, click the link of the node to view its details, and click Delete on the sub navigation menu.

Note: You need delete permissions on the node to delete it. If you don't have this permission, you may not see a Delete link or tab.

Check Status
=====================================================
Node status such as platform, FQDN, IP Address, up time, last check-in time, and run list can be checked on the Management Console.

In order to check node status:

1. Log in to the Hosted Chef Management Console.

2. Click Status tab.



