.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. include:: ../../includes_data_bag/includes_data_bag.rst

The **Management Console** allows users to create, read, update, and delete data bags and data bag items.

Listing Data Bags
=====================================================
To list data bags:

1. Log on to the **Management Console**.
2. Click **Databags** on the main navigation menu.

Viewing or Editing a Specific Data Bag
=====================================================
To view or edit a specific data bag:

1. Log on to the **Management Console**.
2. Click **Databags** on the main navigation menu.
3. Click on the specific data bag you want to view or edit.
4. On the following page, you can create, edit, and delete items in the data bag. For details, refer to the sections below.
   .. image:: ../../images/includes_manage_server_open_source_data_bag_view_1.jpg

Deleting a Data Bag
=====================================================
To delete a data bag:

1. Log on to the **Management Console**.
2. Click **Databags** on the main navigation menu.
3. Click the **Delete** link next to the name of the data bag you want to delete, and click **OK** on the confirmation message box. Or, click the link of the data bag to view its details, and click **Delete** on the sub navigation menu.

Creating Data Bag Items
=====================================================
To create a data bag item in a specific data bag:

1. Repeat the 4 steps in the **Viewing or Editing a Specific Data Bag** section.
2. Click **Create Item** on the sub navigation bar. You will see a page with a JSON editor.
3. Click the **Source** tab in the JSON editor to edit the data bag item directly, or use the tree view on the left and the **Editor** tab to add and edit keys and values. You should not delete the "id" key.

Using the Editor tab
=====================================================
1. Expand the **Data Attributes** tree on the left, click **id**, and enter an value for the name of the data bag item, and then click **Save Attribute**.

2. Click **json** from the **Data Attributes** tree on the left, and click the **Editor** tab on the right, and then click the green add button under the **Editor** tab, enter a name as the key and a body as the value and click **Add Attribute**. The following figures show the **Data Attribute** tree and the JSON editor.

.. image:: ../../images/includes_manage_server_open_source_data_bag_edit_1.png

.. image:: ../../images/includes_manage_server_open_source_data_bag_edit_2.png

3. Click **Create Databag Item** to save the data bag item.

Using the Source tab
=====================================================
1. Enter the JSON body of your data bag item in the editor, and click the **Load JSON from source** button .

2. Click **Create Databag Item** button to save the data bag item. Here's an example:

.. image:: ../../images/includes_manage_server_open_source_data_bag_edit_source_1.png

Editing Data Bag Items
=====================================================
To edit a data bag item in a specific data bag:

1. Repeat the 4 steps in the **Viewing or Editing a Specific Data Bag** section.
2. Click the **Edit** link next to the name of the data bag item you want to edit.
3. Follow step 3 in the **Creating Data Bag Items** section, except that in the last step click **Edit Databag Item** button instead of **Create Databag Item** button.

Deleting Data Bag Items
=====================================================
To delete a data bag item in a specific data bag:

1. Repeat the 4 steps in the **Viewing or Editing a Specific Data Bag** section.
2. Click the **Delete** link next to the name of the data bag item you want to delete, and click **OK** on the confirmation message box. Or, click the link of the data bag item to view its details, and click **Delete** on the sub navigation menu. 
