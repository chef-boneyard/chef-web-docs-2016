.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. include:: ../../includes_environment/includes_environment.rst

The **Management Console** allows users to create, read, update, delete environments, and to select a specific environment to view nodes and cookbooks in that environment.

Selecting an environment
=====================================================
On the header of the **Management Console**, there is an **Environment** drop down box where you can select either "none" or a specific environment.

If "none" is selected, the **Management Console** shows everything when you view nodes and cookbooks; if a specific environment is selected, the **Management Console** only shows the available objects in that environment for nodes and cookbooks. For cookbooks, if you do not define any restriction in the environment, the **Management Console** shows all cookbooks.

When viewing a specific role, the per environment run list for the selected environment shows up; if **none** or **_default** is selected in the **Environment** drop down box, or there is no environment specific run list for the selected environment, the role page shows the **_default** run list.

Objects other than nodes, cookbooks, and roles are not affected by the environment selection.

Listing Environments
=====================================================
The List page under **Environments** tab shows all existing environments. Clicking the link of the **Environment** name allows you to view the environment. You can also select the environment by clicking **Select** next to the name; doing so is equivalent to selecting an environment from the drop-down box on the top of the page.

Viewing an Environment
=====================================================
Click the name of the environment on the List page under **Environments** allows you to view the environment. You are able to see the description, cookbook version constraints, and attributes defined in the environment you are viewing.

Creating an Environment
=====================================================
By clicking the **Create** tab under **Environments**, you are able to create a new environment. In the **Create** form you can specify a name (required), description, cookbook version constraints, and attributes.

Deleting an Environment
=====================================================
An environment can be deleted by clicking the **Delete** link on the List page next to the name of the environment; or by clicking the **Delete** tab on the **Show** page when you view a specific environment. 
