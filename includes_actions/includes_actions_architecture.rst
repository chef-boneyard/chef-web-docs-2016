.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following diagram shows the major components of |chef actions| and how they relate to the major components of |chef server oec|.

.. image:: ../../images/chef_actions.png

As events occur on the |chef server oec| server, the following happens:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Stages
     - Description
   * - **Erchef**
     - |chef actions| tracks all interactions from users (via |knife| and/or the |chef manage| web user interface), the |chef client| (via API calls to the |chef server| during the |chef client| run), cookbooks that are uploaded to the server, downloaded to individual nodes, the actions the |chef client| takes on each node during the |chef client| run).
   * - **Reporting and Push Jobs**
     - |reporting| and |push jobs| are add-ons for |chef server oec|. When installed, |chef actions| can track these add-ons in much the same way as it tracks Erchef.
   * - **WebUI**
     - The web user interface for |chef actions|. It provides visibility into every action tracked by |chef actions|, allows searching of the actions data store, and can be used to generate reports (CSV files, send emails, and so on).
   * - **Actions Pipeline**
     - The Actions Pipeline is used to parse each action as it is tracked, tagging each action with the appropriate tags, idenfitying which notifications (if any) should be sent for each specific action, idenfitying any custom actions (if any) that should be taken against each specific action, and then archiving each action to the data store.
   * - **Notifications**
     - |chef actions| includes a few built in notification engines: HipChat, Campfire, Email, IRC. Custom engines can be built using a simple plugin architecture.
   * - **Data Store**
     - The data store is a PostgreSQL database that is used to store all of the actions that are tracked by |chef actions|. Users of the |chef actions| web user interface interact with the data in the data store via the Actions API.