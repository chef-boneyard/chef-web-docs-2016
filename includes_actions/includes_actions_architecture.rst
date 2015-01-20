.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following diagram shows the major components of |chef actions| and how they relate to the major components of the |chef server|. |chef actions| uses a publish-subscribe messaging platform for components to publish messages about interesting events that are happening within each public API. The pub/sub platform provides some standard consumers of the information, including a database archiving component and web visualization. The data is searchable and stored long term for after-the-fact investigation and audit purposes.

.. image:: ../../images/chef_actions.png

As events occur on the |chef server|, the following happens:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Stages
     - Description
   * - **Chef Server**
     - |chef actions| tracks all interactions from users (via |knife| and/or the |chef manage| web user interface), the |chef client| (via API calls to the |chef server| during the |chef client| run), cookbooks that are uploaded to the server, downloaded to individual nodes, the actions the |chef client| takes on each node during the |chef client| run).
   * - **WebUI**
     - The web user interface for |chef actions|. It provides visibility into every action tracked by |chef actions|, allows searching of the actions data store, and can be used to generate reports (CSV files, send emails, and so on).
   * - **Actions Pipeline**
     - The |chef actions| pipeline is used to parse each action as it is tracked, tagging each action with the appropriate tags, identifying which notifications (if any) should be sent for each specific action, identifying any custom actions (if any) that should be taken against each specific action, and then archiving each action to the data store.
   * - **Notifications**
     - |chef actions| includes a few built-in notification engines: |hipchat| and email. Custom engines can be integrated using a simple webhook architecture via HTTP.
   * - **Data Store**
     - The data store is a |postgresql| database that is used to store all of the actions that are tracked by |chef actions|. Users of the |chef actions| web user interface interact with the data in the data store via the |api actions|.
