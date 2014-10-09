.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**Manual Package Installs**

.. note:: If your systems are behind a firewall and you would like to install any package found below manually, you can use a command like the following after downloading a package for your OS version and architecture. In the following example, the Chef Manage package version 1.6.2 for RHEL6 64 bit is installed from the path /home/vagrant. The full package name will look like opscode-manage-1.6.2-1.el6.x86_64.rpm .

First become root, then

.. code-block:: bash

  $ chef-server-ctl install opscode-manage-1.6.2-1.el6.x86_64 --path /home/vagrant

**Automated Package Installs**

If your datacenter has connectivity to packagecloud.io, you can avoid the extra package download step and install add-ons with any of the following

.. list-table::
   :widths: 100 400
   :header-rows: 1

   * - Feature
     - Command
   * - |chef manage_title|
     - Use |chef manage| to manage data bags, attributes, run-lists, roles, environments, and cookbooks from a web user interface.

       (Front end machines only.) Run:

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

       Run:

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

       Run:

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

       (Front end machines only.) Run:

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
