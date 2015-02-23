=====================================================
Upgrade to |chef server_title| 12
=====================================================

The following sections describe the upgrade process for |chef server| 12.

From |chef server_title| 12
=====================================================
There are two upgrade scenarios for upgrades from earlier versions of |chef server| 12 to a newer version of |chef server| 12:

* `Standalone <http://docs.chef.io/upgrade_server.html#standalone>`__
* `High Availability <http://docs.chef.io/upgrade_server.html#high-availability>`__

The steps for both scenarios are identical to an upgrade from |chef server oec|. See the appropriate section below and follow the same steps.


From |chef server oec|
=====================================================
There are two upgrade scenarios for upgrades from |chef server oec| 11 to |chef server| 12: 

* `Standalone <http://docs.chef.io/upgrade_server.html#standalone>`__
* `High Availability <http://docs.chef.io/upgrade_server.html#high-availability>`__

Before upgrading, please `view the notes <http://docs.chef.io/upgrade_server_notes.html>`__ for more background on the upgrade process from |chef server oec| 11 to |chef server| 12.


Standalone
-----------------------------------------------------
This section describes the upgrade process from a standalone |chef server oec| 11 to |chef server| 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine. The final step will remove older components (like |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server| 12 from a standalone |chef server oec| server, do the following:

#. Verify that the ``make`` command is available on the |chef server oec| machine. If it is not available, install the ``make`` command.

#. Run the following command to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ private-chef-ctl reconfigure

#. Stop the machine:

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Run |debian dpkg| or |rpm|. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i /path/to/chef-server-core-<version>.deb

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh --nopostun /path/to/chef-server-core-<version>.rpm

#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

#. Start |chef server| 12:

   .. code-block:: bash
      
      $ chef-server-ctl start

#. After the upgrade process is complete and everything is tested and verified to be working properly, clean up the machine by removing all of the old data:

   .. code-block:: bash
      
      $ chef-server-ctl cleanup

#. .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features.rst

   **Use Downloads**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

   **Use Local Packages**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst



High Availability
-----------------------------------------------------
This section describes the upgrade process from a high availability |chef server oec| 11 to |chef server| 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine. The final step will remove older components (like |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server| 12 from a high availability |chef server oec| server, do the following:

#. Verify that the ``make`` command is available on the primary backend |chef server oec| machine. If it is not available, install the ``make`` command.

#. Run the following on all machines to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ private-chef-ctl reconfigure

#. Stop all of the front end machines:

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Identify the name of the original non-bootstrap backend machine. This is the back end machine that does **not** have ``:bootstrap => true`` in ``/etc/opscode/private-chef.rb``.

#. Stop |keepalived| on the original non-bootstrap backend machine. This will ensure that the bootstrap back end machine is the active machine. This action may trigger a failover.

   .. code-block:: bash
      
      $ private-chef-ctl stop keepalived

#. Run |debian dpkg| or |rpm| on all machines. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i /path/to/chef-server-core-<version>.deb

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh --nopostun /path/to/chef-server-core-<version>.rpm

#. On the primary back end machine, stop all services except |keepalived|. With |chef server| 12, the |keepalived| service will not be stopped with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl stop

   If the upgrade process times out, re-run the command until it finishes successfully.


#. Upgrade the back end primary machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

   If the upgrade process times out, re-run the command until it finishes successfully.

#. Copy the entire ``/etc/opscode`` directory from the back end primary machine to all front and back end nodes. For example, from each server run:

   .. code-block:: bash
      
      $ scp -r <Bootstrap server IP>:/etc/opscode /etc

   or from the back end primary machine:

   .. code-block:: bash
      
      $ scp -r /etc/opscode <each servers IP>:/etc

#. Upgrade the back end secondary machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

   In some instances, after the upgrade processes is complete, it may be required to stop |keepalived| on the back end secondary machine, then restart |keepalived| on the back end primary machine, and then restart |keepalived| on the back end secondary machine.

#. Upgrade all front end machines with the following commands:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

#. Run the following command on all front end machines and the primary back end machine:

   .. code-block:: bash
      
      $ chef-server-ctl start

   .. note:: Do not run this command on the secondary back-end machine!

#. After the upgrade process is complete, the state of the system after the upgrade has been tested and verified, and everything looks satisfactory, remove old data, services, and configuration by running the following command on each machine:

   .. code-block:: bash
      
      $ chef-server-ctl cleanup

   .. note:: The message ``[ERROR] opscode-chef-mover is not running`` is expected, does not indicate an actual error, and is safe to ignore.

#. .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features.rst

   **Use Downloads**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

   **Use Local Packages**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst



From |chef server osc|
=====================================================
This section describes the upgrade process from a standalone configuration of |chef server osc| 11.1.0 (or higher) to a standalone configuration of |chef server| 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine.

Please `view the notes <http://docs.chef.io/upgrade_server_open_source_notes.html>`__ for more background on the upgrade process from |chef server osc| 11 to |chef server| 12.

To upgrade to |chef server| 12 from the |chef server osc| server, do the following:

#. Run the following to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. Stop the |chef server osc| server:

   .. code-block:: bash
      
      $ chef-server-ctl stop

#. Run |debian dpkg| or |rpm| on the machine to install |chef server| 12. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i /path/to/chef-server-core-<version>.deb

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh /path/to/chef-server-core-<version>.rpm

   |chef server| 12 is installed to ``/opt/opscode``. (The existing |chef server osc| remains at ``/opt/chef-server``.) From this point, the ``chef-server-ctl`` commands are running against the ``/opt/opscode`` location.

#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

   The upgrade process will automatically detect the presence of |chef server osc| 11, and will step through the migration process, prompting for organization name details along the way.

   The migration process will first download the existing data from the |chef server osc| server, transform that data into the format required for |chef server| 12, and then upload that data to the server.
   
#. Before data can be uploaded, an organization must be created. When prompted, enter the organization name, and then a full organization name.

   |name_rules org| For example: ``chef``.

   |name_rules org_full| For example: ``"Chef Software, Inc."``.

   .. note:: The upgrade process will automatically assign the organization name to the ``default_orgname`` setting in the |chef server rb| file. This setting ensures the new organization name is available for |api chef server| requests, such as those made by the |chef client| and by |knife|.

#. The |chef server| is automatically restarted. A prompt is displayed that contains details about how to remove any temporary data that was created during the upgrade process.

#. .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features.rst

   **Update the Chef server URL**

   .. include:: ../../includes_upgrade/includes_upgrade_url_chef_server.rst

   .. note:: Any |chef client| or |knife| user that tries to access the |chef server| after the upgrade will be able to do so as long as the ``default_orgname`` is set and is part of the default organization on the upgraded |chef server|.

   **Use Downloads**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

   **Use Local Packages**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst



|chef manage_title|
=====================================================
|chef manage| can be upgraded as part of a standalone or high availability configuration:

#. After upgrading the |chef server|, run the following command on each of the front end servers:

   .. code-block:: bash

      $ chef-server-ctl install opscode-manage

#. Reconfigure each of the front end servers:

   .. code-block:: bash

      $ opscode-manage-ctl reconfigure



|push jobs_title|
=====================================================
|push jobs| can be upgraded as part of a standalone or high availability configuration:

#. After upgrading the |chef server|, run the following command on all front and back end servers:

   .. code-block:: bash

      $ chef-server-ctl install opscode-push-jobs-server

#. TCP protocol ports 10000-10003 must be open. This allows the |push jobs| clients to communicate with the |push jobs| server. In a configuration with both front and back ends, these ports only need to be open on the back end servers. The |push jobs| server waits for connections from the |push jobs| client (and never makes a connection to a |push jobs| client).

#. Reconfigure the |push jobs| servers:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl reconfigure

#. Run the following command on each of the back end servers:

   .. code-block:: bash

      $ chef-server-ctl reconfigure

   This ensures that the |keepalived| scripts are regenerated so they are aware of |push jobs|.

#. Restart the |push jobs| components:

   .. code-block:: bash

      $ chef-server-ctl restart opscode-pushy-server

#. Verify the installation:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl test

#. Install the |push jobs| client on all nodes using the |cookbook push jobs| cookbook, as needed.
