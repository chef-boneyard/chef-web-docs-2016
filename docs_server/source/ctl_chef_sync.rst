.. THIS PAGE IS IDENTICAL TO docs.getchef.com/ctl_chef_sync.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
chef-sync-ctl (executable)
=====================================================

``chef-sync-ctl`` is the command line tool for Chef Replication, which allows asynchronous replication of cookbook content---roles, environments, data bags, and so on---across |chef server| organizations, including both standalone and high avaiability configurations.


manager-log
=====================================================
Use to show the log file for the synchronization manager.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl manager-log


prepare-org
=====================================================
Use to prepare the specified organization for synchronization by associating the synchronizing user, and then making that user an administrator. This subcommand must be run on both the source and target organizations.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl prepare-org ORG_NAME

This option will compile a list of group names, organization names, and actors (users, clients, and groups).

sync-log
=====================================================
Use to show the log file for the specified organization.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl sync-log ORG_NAME


sync-start
=====================================================
Use to start synchronizing an organization.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl sync-start ORG_NAME


sync-status
=====================================================
Use to show the current status of all organizations that are synchronizing.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl sync-status

and will return a list that shows the organization name, its status, the last synchronization time, and the time at which the synchronization process will begin again.
 
sync-stop
=====================================================
Use to stop synchronizing an organization.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl sync-stop ORG_NAME


unsynced-objects
=====================================================
Use to show unsynchronized objects for the specified organization.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl unsynced-objects ORG_NAME

