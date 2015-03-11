.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``install`` subcommand downloads packages from https://packagecloud.io/ by default. For systems that are not behind a firewall (and have connectivity to https://packagecloud.io/), these packages can be installed as described below.

.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Command
   * - |chef manage_title|
     - Use |chef manage| to manage data bags, attributes, run-lists, roles, environments, and cookbooks from a web user interface.

       On the |chef server|, run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-manage

       then:

       .. code-block:: ruby

          $ opscode-manage-ctl reconfigure

       and then:

       .. code-block:: ruby

          $ chef-server-ctl reconfigure 

   * - |push jobs_title|
     - Use |push jobs| to run jobs---an action or a command to be executed---against nodes independently of a |chef client| run.

       On the |chef server|, run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-push-jobs-server

       then:

       .. code-block:: ruby

          $ opscode-push-jobs-server-ctl reconfigure

       and then:

       .. code-block:: ruby

          $ chef-server-ctl reconfigure 


   * - |chef replication_title|
     - Use |chef replication| to asynchronously distribute cookbook, environment, role, and data bag data from a single, primary |chef server| to one (or more) replicas of that |chef server|.

       On the |chef server|, run:

       .. code-block:: ruby

          $ chef-server-ctl install chef-sync

       and then:

       .. code-block:: ruby

          $ chef-sync-ctl reconfigure

       and then:

       .. code-block:: ruby

          $ chef-server-ctl reconfigure 

   * - |reporting_title|
     - Use |reporting| to keep track of what happens during every |chef client| runs across all of the infrastructure being managed by |chef|. Run |reporting| with |chef manage| to view reports from a web user interface.

       On the |chef server|, run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-reporting

       then:

       .. code-block:: ruby

          $ opscode-reporting-ctl reconfigure	 

       and then:

       .. code-block:: ruby

          $ chef-server-ctl reconfigure 

..
..   * - |chef ha_title|
..     - Run:
..
..       .. code-block:: ruby
..
..          $ chef-server-ctl install chef-ha
..
..       and then:
..
..       .. code-block:: ruby
..
..          $ chef-server-ctl reconfigure
..