.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

.. warning:: This section applies only to upgrading standalone configurations of the |chef server osc| server.

The new upgrade process is simpler. Stop the services, update the package on the system, run the ``upgrade`` subcommand, and then restart the |chef server osc| server.

#. Stop the services:
   
   .. code-block:: bash
   
      $ chef-server-ctl stop

#. After all of the services have shut down, update the package (using the appropriate package manager for the system on which the server is running):
   
   .. code-block:: bash
   
      $ dpkg -i package.deb

#. Upgrade the server itself:
   
   .. code-block:: bash
   
      $ chef-server-ctl upgrade
   
   .. note:: The following error may be present in the logs for |postgresql| during the upgrade process: ``ERROR: duplicate key value violates unique constraint "checksums_pkey"``. This error does not represent an issue with the upgrade process and can be safely ignored.

#. Restart all of the services:
   
   .. code-block:: bash
   
      $ chef-server-ctl restart

   Sometimes the upgrade process may orphan processes. If orphaned processes are discovered, they can be killed safely.

#. Check the status of everything:
   
   .. code-block:: bash
   
      $ chef-server-ctl status


