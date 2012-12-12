.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, update, and delete data bags and data bag items.





The Hosted Chef Management Console can be used to manage your data bags:

List
=====================================================
To list data bags in your organization:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Data bags on the main navigation menu.

   .. image:: ../../images/step_manage_server_hosted_data_bag_list.jpg

Note: You need the list permission on the global data bag level to see the list of data bags.

Add
=====================================================
1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click Create on the sub-navigation bar. Enter a name for the data bag and click on the Create data bag button.

Note: You need the create permission on the global data bag level to create new data bags.

View
=====================================================
To view or edit a specific data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click on the specific data bag you want to view or edit.

   .. image:: ../../images/step_manage_server_hosted_data_bag_view.jpg

Edit
=====================================================
To view or edit a specific data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click on the specific data bag you want to view or edit.

4. On the following page you can create items in the data bag.


Delete
=====================================================
To delete a data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click the Delete link next to the name of the data bag you want to delete, and click OK on the confirmation message box. Or, click the link of the data bag to view its details, and click Delete on the sub navigation menu.

Note: You need delete permissions on a data bag to delete it. If you don't have this permission, you will not see a Delete link or tab.

Data Bag Items
=====================================================
xxxxx

Add Data Bag Item
-----------------------------------------------------
To create a data bag item in a specific data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click on the specific data bag you want to view or edit.

4. Click Create Item on the sub navigation bar. You will see a page with a JSON editor.

5. Click the Source tab in the JSON editor to edit the data bag item directly, or use the tree view on the left and the Editor tab to add and edit keys and values. Further directions on these two methods are below. You should not delete the "id" key as this contains the name of the data bag item.

Note: You need create permissions on the parent data bag in order to create a new item within it.

Editor Tab
+++++++++++++++++++++++++++++++++++++++++++++++++++++
1. Expand the Data Attributes tree on the left and click "id".

2. Enter a value for the name of the data bag item, and then click Save Attribute. This will be the name of the data bag item when you are completed.

   .. image:: ../../images/step_manage_server_hosted_data_bag_item_edit_editor_1.jpg

3. Now you can add contents to the data bag. Click on "json" from the Data Attributes tree on the left, and click the Editor tab on the right.

4. Click the green add button under the Editor tab: 

5. Enter a name as the key and a body as the value and click Add Attribute. The following figures show the Data Attribute tree and the JSON editor.

   .. image:: ../../images/step_manage_server_hosted_data_bag_item_edit_editor_2.jpg

6. Add more contents to the data bag by following steps 3 through 5 as many times as needed. Click Create Databag Item to save the data bag item.

Source Tab
+++++++++++++++++++++++++++++++++++++++++++++++++++++
1. Enter the JSON body of your data bag item in the editor, and click the Load JSON from source button: 

Here's an example with just the name set:

   .. image:: ../../images/step_manage_server_hosted_data_bag_item_edit_source_1.jpg

You can also add contents to the data bag item by editing the json with further key/value pairs. Here's an example:

   .. image:: ../../images/step_manage_server_hosted_data_bag_item_edit_source_2.jpg

2. Click Create Databag Item button to save the data bag item when you are done.




Edit Data Bag Items
-----------------------------------------------------
To edit a data bag item in a specific data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click the Edit link next to the name of the data bag item you want to edit.

4. Click Edit Databag Item on the sub navigation bar. You will see a page with a JSON editor.

5. Click the Source tab in the JSON editor to edit the data bag item directly, or use the tree view on the left and the Editor tab to add and edit keys and values. You should not delete the "id" key as this contains the name of the data bag item. More information on using the Editor and Source tabs can be found in the sections above.

Note: You need update permissions on the parent data bag in order to edit a data bag item within it.

View Data Bag Items
-----------------------------------------------------
1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click on the specific data bag that contains the data bag item you want to view.

4. Click on the specific data bag item you want to view. This will show a page similar to this:

   .. image:: ../../images/step_manage_server_hosted_data_bag_view.jpg

Delete Data Bag Items
-----------------------------------------------------
To delete a data bag item in a specific data bag:

1. Log on to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Click Databags on the main navigation menu.

3. Click the Delete link next to the name of the data bag item you want to delete, and click OK on the confirmation message box. Or, click the link of the data bag item to view its details, and click Delete on the sub navigation menu.

Note: If you do not see a Delete link or tab, you do not have delete permissions on the parent data bag.



