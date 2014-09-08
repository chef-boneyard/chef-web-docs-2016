.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``install`` subcommand is used to install premium features of the |chef server|: |chef manage|, |chef analytics|, |chef client| run reporting, high availability configurations, |push jobs|, and |chef server| replication.

This subcommand has the following syntax:

.. code-block:: bash

   $ chef-server-ctl install name_of_premium_feature

where ``name_of_premium_feature`` represents the command line value associated with the premium feature:

.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Command
   * - Chef Analytics
     - ``$ chef-server-ctl install opscode-analytics``
   * - Chef Manage
     - ``$ chef-server-ctl install opscode-manage``
   * - High Availability
     - ``$ chef-server-ctl install chef-ha``	 
   * - Push Jobs
     - ``$ chef-server-ctl install opscode-push-jobs-server``
   * - Replication
     - ``$ chef-server-ctl install chef-sync``
   * - Reporting
     - ``$ chef-server-ctl install opscode-reporting``

	 
	 
	 
	 
	 
	 
