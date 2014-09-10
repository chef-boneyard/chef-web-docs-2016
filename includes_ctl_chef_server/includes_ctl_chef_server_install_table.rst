.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Command
   * - |chef analytics_title|
     - Run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-analytics

       and then:

       .. code-block:: ruby

          $ opscode-analytics-ctl reconfigure

   * - |chef manage_title|
     - Run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-manage

       and then:

       .. code-block:: ruby

          $ opscode-manage-ctl reconfigure

   * - |push jobs_title|
     - Run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-push-jobs-server

       and then:

       .. code-block:: ruby

          $ opscode-push-jobs-server-ctl reconfigure	 Hmm

   * - |chef replication_title|
     - Run:

       .. code-block:: ruby

          $ chef-sync-ctl install chef-sync

       and then:

       .. code-block:: ruby

          $ chef-server-ctl reconfigure 

   * - |reporting_title|
     - Run:

       .. code-block:: ruby

          $ chef-server-ctl install opscode-reporting

       and then:

       .. code-block:: ruby

          $ opscode-reporting-ctl reconfigure	 

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