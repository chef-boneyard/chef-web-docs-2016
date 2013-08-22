.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_expander['consumer_id']``
     - Default value: ``default``.
   * - ``chef_expander['dir']``
     - Default value: ``/var/opt/chef-server/chef-expander``.
   * - ``chef_expander['enable']``
     - Default value: ``true``.
   * - ``chef_expander['ha']``
     - Indicates that the |chef server| is installed as part of a |ha| topology. Default value: ``false``.
   * - ``chef_expander['log_directory']``
     - The directory in which log files are located. Default value: ``/var/log/chef-server/chef-expander``.
   * - ``chef_expander['nodes']``
     - Default value: ``2``.
   * - ``chef_expander['reindexer_log_directory']``
     - Default value: ``/var/log/chef-server/chef-expander-reindexer``.
   * - ``opscode_expander['redindexer_svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``opscode_expander['reindexer_svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
   * - ``opscode_expander['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``opscode_expander['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
