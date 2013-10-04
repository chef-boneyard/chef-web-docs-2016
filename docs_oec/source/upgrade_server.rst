=====================================================
Upgrade to Enterprise Chef
=====================================================

The upgrade process will require downtime equal to the amount of time it takes to stop all of the machines, run |debian dpkg|, and then upgrade each of the machines. The final step will remove older components (like the |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server oec|, do the following:

#. Stop all of the machines:

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Run |debian dpkg| or |rpm| on all machines. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i <new package>

   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh <new package>

#. Upgrade the machines in the following order: backend machines (bootstrap server first, if used) and then front end servers (in any order), with the following command:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

And then after the upgrade process is complete, each of the machines should be cleaned up to remove old data:

.. code-block:: bash
   
   $ private-chef-ctl cleanup

