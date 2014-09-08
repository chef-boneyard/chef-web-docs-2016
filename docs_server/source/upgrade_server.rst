=====================================================
Upgrade to |chef server| 12
=====================================================
The following sections describe the upgrade process for |chef server| 12.

From |chef server oec|
=====================================================
There are two upgrade scenarios for upgrades from |chef server oec| 11 to |chef server| 12: high availability and standalone.

High Availability
-----------------------------------------------------
This section describes the upgrade process from a high availability |chef server oec| 11 to |chef server| 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine. The final step will remove older components (like |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server| 12 from a high availability |chef server oec| server, do the following:

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

#. Once failover is complete, stop the remaining services on the back end machines.

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Run |debian dpkg| or |rpm| on all machines. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i /path/to/chef-server-core-<version>.deb

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh --nopostun /path/to/chef-server-core-<version>.rpm

#. Upgrade the back end primary machine with the following command:

   .. code-block:: bash
      
      $ chef-server-ctl upgrade

   If the upgrade process times out, re-run the command until it finishes successfully.

#. Copy the entire /etc/opscode directory from the back end primary machine to all front and back end nodes. For example, from each server run:

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

#. Run the following command on all front end and back end machines:

   .. code-block:: bash
      
      $ chef-server-ctl start

#. After the upgrade process is complete, the state of the system after the upgrade has been tested and verified, and that everything looks satisfactory, remove old data, services, and configuration by running the following command on each machine:

   .. code-block:: bash
      
      $ chef-server-ctl cleanup

   .. note:: The message ``[ERROR] opscode-chef-mover is not running`` is expected, does not indicate an actual error, and is safe to ignore.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following command:

   .. code-block:: bash
      
      $ chef-server-ctl install name_of_premium_feature

   where ``name_of_premium_feature`` is one of the following values: ``opscode-analytics`` (for |chef analytics|), ``opscode-manage`` (for |chef manage|), ``chef-ha`` (for |chef ha|), ``chef-sync`` (for |chef server| replication), or ``opscode-reporting`` (for |reporting|).

Standalone
-----------------------------------------------------
This section describes the upgrade process from a standalone |chef server oec| 11 to |chef server| 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine. The final step will remove older components (like |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server| 12 from a standalone |chef server oec| server, do the following:

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

#. After the upgrade process is complete and everything is tested and verified to be working properly, clean up the machine by removing all of the old data:

   .. code-block:: bash
      
      $ chef-server-ctl cleanup

#. Start |chef server| 12:

   .. code-block:: bash
      
      $ chef-server-ctl start

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following command:

   .. code-block:: bash
      
      $ chef-server-ctl install name_of_premium_feature

   where ``name_of_premium_feature`` is one of the following values: ``opscode-analytics`` (for |chef analytics|), ``opscode-manage`` (for |chef manage|), ``chef-ha`` (for |chef ha|), ``chef-sync`` (for |chef server| replication), or ``opscode-reporting`` (for |reporting|).

From |chef server osc|
=====================================================
This section describes the upgrade process from a standalone configuration of |chef server osc| 11 to a standalone configuration of |chef server| version 12. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine.

Please :doc:`view the notes </upgrade_server_open_source_notes>` for more background on the upgrade process from from |chef server osc| 11 to |chef server| 12.

To upgrade to |chef server| 12 from the |chef server osc| server, do the following:

#. Run the following to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. Stop the |chef server osc| server:

   .. code-block:: bash
      
      $ chef-server-ctl stop

#. Run |debian dpkg| or |rpm| on the machine to install |chef server| version 12. For |debian dpkg|:

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

   The migration process will first download the existing data from the |chef server osc| server, transform that data into the format required for |chef server| version 12, and then upload that data to the server.
   
#. Before data can be uploaded, an organization must be created. When prompted, enter the organization name, and then a full organization name.

   The organization name must begin with a lower-case letter or digit, may only contain lower-case letters, digits, hyphens, and underscores, and must be between 1 and 255 characters. For example: ``chef``.

   The full organization name must begin with a non-white space character and must be between 1 and 1023 characters. For example: ``Chef Software, Inc.``.

#. The |chef server| is automatically restarted. A prompt is displayed that contains details about how to remove any temporarily data that was created during the upgrade process.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following command:

   .. code-block:: bash
      
      $ chef-server-ctl install name_of_premium_feature

   where ``name_of_premium_feature`` is one of the following values: ``opscode-analytics`` (for |chef analytics|), ``opscode-manage`` (for |chef manage|), ``chef-ha`` (for |chef ha|), ``chef-sync`` (for |chef server| replication), or ``opscode-reporting`` (for |reporting|).
