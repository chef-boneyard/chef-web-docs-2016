.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The **Management Console** runs on port 4040 by default. Navigate your browser to http://chef.example.com:4040/ (replacing chef.example.com with the actual hostname of your Chef server, of course). You'll be redirected to the login screen.

Logging in For the First Time
=====================================================
When logging in for the first time, use the default credentials

.. list-table::
   :widths: 60 420
   :header-rows: 0

   * - Username
     - admin
   * - Password
     - p@ssw0rd1


.. image:: ../../images/includes_manage_server_open_source_user_login.jpg

When you log in as the default admin user, you're immediately redirected to the edit page for that user.
After changing the default password, you can add add new users or use any other features of the **Management Console**.

Change the Default Password
-----------------------------------------------------
Default passwords are no better than not having a password. They're evil. They must die. Please change the default password and never use it again.

.. image:: ../../images/includes_manage_server_open_source_user_change_password.jpg

Using the Bootstrap Recipe
-----------------------------------------------------
When using the ``bootstrap::server`` recipe, this is actually a randomly generated password, and set in ``/etc/chef/server.rb`` through the template, with the setting ``web_ui_admin_default_password``. This can be set to a different value by setting ``webui_admin_password`` in the ``chef.json``.

Managing Users with the Web Interface
=====================================================
Users are managed from the users tab:

.. image:: ../../images/includes_manage_server_open_source_user_manage.jpg

Creating New Users
-----------------------------------------------------
To create a new user, click **Create** on the **Users** page, then fill in the user's name and password. Tick the box if the new user will be an administrator, then hit the **Create** button.

.. image:: ../../images/includes_manage_server_open_source_user_create.jpg

Deleting Users
-----------------------------------------------------
To delete a user, click the link for **Delete** next to the user's name in the list. Chef will ask if you're sure about deleting the user. Click **OK** to confirm. 

.. image:: ../../images/includes_manage_server_open_source_user_delete.jpg

Editing Users
-----------------------------------------------------
To edit a user, click the **Edit** link next to the user's name in the list. You'll see the same edit form you saw when you first logged in as the "admin" user. 

.. image:: ../../images/includes_manage_server_open_source_user_edit.jpg




