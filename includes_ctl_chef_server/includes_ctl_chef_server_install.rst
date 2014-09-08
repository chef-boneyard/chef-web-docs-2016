.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``install`` subcommand is used to install premium features of the |chef server|: |chef manage|, |chef analytics|, |chef-client| run reporting, high availability configurations, |push jobs|, and |chef server| replication.

This subcommand has the following syntax:

.. code-block:: bash

   $ chef-server-ctl install name_of_premium_feature

where ``name_of_premium_feature`` represents the command line value associated with the premium feature:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Premium Feature
     - Command Line Value
   * - Chef Analytics
     - ``opscode-analytics``
   * - Chef Manage
     - ``opscode-manage``
   * - High Availability
     - ``chef-ha``	 
   * - Push Jobs
     - ``opscode-push-jobs-server``
   * - Replication
     - ``chef-sync``
   * - Reporting
     - ``opscode-reporting``

	 
	 
	 
	 
	 
	 
