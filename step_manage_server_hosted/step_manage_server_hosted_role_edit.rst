.. This is an included how-to. 

To edit a role:

#. Login to the Hosted Chef Management Console and navigate to the Roles tab.

#. Make sure that the correct environment is selected at the top of the screen, select None if you want this role to work the same on all environments. Click on edit next to the role you want to edit.

#. To add a role or recipe to the role being edited, drag it from Available Roles or Available Recipes to Run List:

   .. image:: ../../images/step_manage_server_hosted_role_edit_1.png

#. To remove a role or recipe from the role being edited, drag it from the Run List back to an Available section:

   .. image:: ../../images/step_manage_server_hosted_role_edit_2.png

The Active Run List panel on the right shows the current active run list for the environment selected with the drop down box at the top of the page. If the None or _default environments are selected it shows the default run list. If you've selected an environment that does not have a specific run list yet it will also show the default run list. If you edit the run list while an environment is selected at the top of the page, your changes will be saved as a run list specific for nodes in that environment.

#. Click Save Role to save.

Note: You need update permissions on the role to edit it.