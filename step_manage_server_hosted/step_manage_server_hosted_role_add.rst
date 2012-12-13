.. This is an included how-to. 


The role create page allows you to create a role. You can add recipes and roles to the run list. There is also a JSON editor for editing, adding and removing JSON attributes associated with the role.

To add a role:

#. Login to the **Management Console** and navigate to the Roles tab.

#. Make sure that the correct environment is selected at the top of the screen, select None if you want this role to work the same on all environments. Click **Create** on the sub navigation bar.

#. Give the role a name and an optional description.

#. Continue onto editing the role, by adding to it's run-list and editing the attributes. This is described further in the next section.

#. When you have finished editing the role, click **Create Role** to save the new role.

If you selected a custom environment and need the run list setup differently with another environment, you can now change the environment and edit the run list. If an environment is selected from the drop down at the top of the page, you will only see the run_list and attributes specific to this environment. You can see the default run list and attributes by selecting ``None`` or ``_default`` from the drop-down.

Note: You need create permissions on the global roles level to create new roles.