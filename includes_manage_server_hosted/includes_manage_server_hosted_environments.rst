.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, update, delete environments, and to select a specific environment to view nodes and cookbooks in that environment.




List
=====================================================
To list environments in your organization:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Environments on the main navigation menu.

   .. image:: ../../images/step_manage_server_hosted_environment_list.jpg

Note: You need list permissions on the global environments level to see the list of environments.

View
=====================================================
In order to view a specific environment:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Environments on the main navigation menu.

3. Click on the name of the specific environment you want to view on the environments list page. This will show you data such as the Cookbook Version Constraints and Attributes for the Environment:

   .. image:: ../../images/step_manage_server_hosted_environment_view_1.jpg

In order to see other data in the environment, such as the nodes that are members of it, you can select the environment from the drop down box at the top of the page and then go to the relevant tab in the Management Console:

   .. image:: ../../images/step_manage_server_hosted_environment_view_2.jpg

For instance, to view nodes in the environment you could click on the Node tab after selecting environment from the drop down. To view data for all environments select None from the drop down. This can also get set by clicking on the Select link next to an environment on the Environments tab.

Note: You need read permissions on the environment to view it.

Add
=====================================================
The environment creation page allows you to create a new environment and set its cookbook version constraints and attributes.

In order to create an environment:

1. Log on to the Hosted Chef Management Console and navigate to the Environments tab.

2. Click Create on the sub navigation bar.

3. Give the environment a name and an optional description

4. If necessary, add any cookbook version constraints by selecting the cookbook name, operator, and entering the version number in the format of x.y or x.y.z, and then click add.

5. If necessary, add environment attributes in the JSON attribute editor. More information on using the JSON editor can be found in the next section.

6. Click Create Environment.

Note: You need create permissions on the global environments level to create an environment.

Edit
=====================================================
1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Environments on the main navigation menu.

3. Click on the edit link next to the name of the environment you want to edit.

4. On this page you can add any cookbook version constraints by selecting the cookbook name, operator, and entering the version number in the format of x.y or x.y.z, and then click add. You can also edit the Attributes, which is described further below.

5. Click the Create Environment or Update Environment button when you are done to save the environment.

Note: You need update permissions on the environment to edit it.

Edit Default and Override Attributes
=====================================================
You can edit the override Attributes of an environment, to override the values of an included recipe or role, and you can edit the default attributes of an environment to specify attributes that do not exist in included recipes and roles. You can use the Editor or Source tabs on this page to edit the attributes. With the Editor tab you can edit the attributes by selecting the location on the tree and adding the details. You can use the Source tab to paste in JSON directly.

Note: You need update permissions on the environment to edit the attributes.

Editor Tab
-----------------------------------------------------
1. Click on the plus sign next to "json" and select "default" or "override" from the tree on the left, depending on the type of attribute you want to create. If you're unsure, you should select "default" unless you are trying to override a default attribute that is already set in the node or in a recipe.

2. Click on the Editor tab on the right.

3. Push the green add button under the Editor tab: 

4. Select a type of attribute from the drop down box. If you are unsure, you most likely want "string" if the value is text, or "number" if the value is a number.

5. Enter a name as the key and a body as the value and click Add Attribute. The following figure shows the Default and Override Attributes tree and the JSON editor.

   .. image:: ../../images/step_manage_server_hosted_environment_edit_editor.jpg

6. Click the Create Environment or Update Environment button to save the environment.

Source Tab
-----------------------------------------------------
1. Enter the JSON body in the editor, and click the Load JSON from source button: 



2. Click the Create Environment or Update Environment button to save the environment.

Move a Node to an Environment
=====================================================
1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Nodes on the main navigation menu.

3. Click on the edit link next to the node you want to move to the environment.

4. Select the environment from the drop down box under Environment.

   .. image:: ../../images/step_manage_server_hosted_environment_move_node.jpg

5. Click on the Save Node button.

Note: You need update permissions on the node to edit it.

Delete
=====================================================
1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Environments on the main navigation menu.

3. Click on the delete link next to the environment you want to delete.

Note: You need delete permissions on the environment to delete it.





