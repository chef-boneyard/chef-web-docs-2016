.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is comprised of the following:

.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_big_chef_client.png
     - A |chef client| is installed on every node that is under management by |chef|. The |chef client| performs all of the configuration tasks that are specified by the run-list and will pull down any required configuration data from the |chef server| as it is needed during the |chef client| run.
   * - .. image:: ../../images/icon_big_chef_dk.png
     - One (or more) workstations are configured to allow users to author, test, and maintain cookbooks. Cookbooks are uploaded to the |chef server| from the workstation. Some cookbooks are custom to the organization and others are based on community cookbooks available from the |supermarket|. The |chef dk| is packaged by |chef| and provides an optional (but recommended) set of tooling, including the |chef ctl| command line tool, |kitchen|, |chef spec|, |berkshelf|, and more.
   * - .. image:: ../../images/icon_big_chef_server.png
     - The |chef server| acts as a hub of information. Cookbooks and policy settings are uploaded to the |chef server| by users from workstations. (Policy settings may also be maintained from the |chef server| itself, via the |chef manage| web user interface.) The |chef client| accesses the |chef server| from the node on which it's installed to get configuration data, perform searches of historical |chef client| run data, and then pulls down the necessary configuration data. After the |chef client| run is finished, the |chef client| uploads updated |chef client| run data to the node object and generates reporting data about that |chef client| run.
   * - .. image:: ../../images/icon_big_chef_manager.png
     - The |chef manage| web user interface is used to manage objects that are stored on the |chef server|, including data bags, attributes, run-lists, roles, environments, and cookbooks. Additionally, reports are views into what happened during every |chef client| run that has occurred across all of the nodes that are under management by |chef|.
   * - .. image:: ../../images/icon_big_chef_analytics.png
     - |chef analytics| provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred. Actions details are tracked on the |chef server| and are visible to users from the |chef analytics| web user interface.
   * - .. image:: ../../images/icon_big_chef_ha.png
     - Availability supports out-of-the-box and custom high availability scenarios, plus server replication from a |chef server| master to any number of replica instances of the |chef server|.
   * - .. image:: ../../images/icon_big_chef_supermarket.png
     - |supermarket| is the new community site for |chef|, located at |url opscode_community|.


..   * - .. image:: ../../images/icon_big_chef_supermarket.png
..     - |supermarket| is the location in which community cookbooks are authored and maintained. Cookbooks that are part of the |supermarket| may be used by any |chef| user. How community cookbooks are used varies from organization to organization.
..   * - .. image:: ../../images/icon_big_chef_ha.png
..     - |chef ha| provides support for running the |chef server| at scale.