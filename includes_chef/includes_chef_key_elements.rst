.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is comprised of the following:

.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_big_chef_server.png
     - The |chef server| acts as a hub that is available to every node in the organization.
   * - .. image:: ../../images/icon_big_chef_client.png
     - A |chef client| is installed on every node. The |chef client| performs all of the configuration tasks that are specified by a run-list, including pulling any required configuration data from the |chef server| during every |chef client| run.
   * - .. image:: ../../images/icon_big_chef_dk.png
     - One (or more) workstations, on which cookbooks are authored, tested, and maintained prior to uploading them to the |chef server|. The |chef dk| provides an optional (but recommended) set of tooling that is packaged by |chef|. The |chef dk| includes the |chef ctl| command line tool, |kitchen|, |chef spec|, |berkshelf|, and more.
   * - .. image:: ../../images/icon_big_chef_supermarket.png
     - |supermarket| provides the location in which community cookbooks are authored and maintained. Cookbooks that are part of the |supermarket| may be used by any |chef| user.
   * - .. image:: ../../images/icon_big_chef_manager.png
     - |chef manage| provides a web user interface for the |chef server|.
   * - .. image:: ../../images/icon_big_chef_analytics.png
     - |chef analytics| provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred.
   * - .. image:: ../../images/icon_big_chef_ha.png
     - |chef ha| provides support for running the |chef server| at scale.
