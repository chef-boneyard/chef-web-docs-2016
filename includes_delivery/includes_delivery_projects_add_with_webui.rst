.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To add a project using the |chef delivery| web user interface:

#. Log into the |chef delivery| web UI as user with **Admin** role.
#. Click the plus sign (**+**) next to **Add a New Project**.

   A text area opens.

#. Enter a project name and select a **Source Code Provider**, either **Chef Delivery** (the default) or **GitHub**: 

#. If you choose **Chef Delivery**, simply click **Save and Close** to finish adding the project.

#. If you choose **GitHub**, a text area opens. Enter the following:

   **GitHub Organization Name**

   **GitHub Project Name** 

   **Pipeline Branch** The name of the target branch that |chef delivery| will manage (most projects will have master as the target branch). The target branch must exist in the repository. 

   **Verify SSL**  When selected, have |github| perform SSL certificate verification when it connects to |chef delivery| to run its web hooks.

   Then click **Save and Close**.
