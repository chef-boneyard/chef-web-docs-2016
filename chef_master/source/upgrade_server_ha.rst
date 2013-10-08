=====================================================
Upgrade to Enterprise Chef 11: High Availability
=====================================================

This topic describes the upgrade process from |chef private| to |chef server oec|. The upgrade process will require downtime equal to the amount of time it takes to stop all of the machines, run |debian dpkg| or |rpm|, and then upgrade each of the machines. The final step will remove older components (like the |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server oec|, do the following:

#. Stop all of the front end machines:

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Stop the back end secondary machine:

   .. code-block:: bash
      
      $ private-chef-ctl stop keepalived

#. Run |debian dpkg| or |rpm| on all machines. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i <new package>

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh <new package>

#. Upgrade the back end primary machine with the following command:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

   If the upgrade process times out, re-run the command until it finishes successfully.

#. Copy the entire ``/etc/opscode`` directory from the back end master to all front and back end nodes.

#. Upgrade the back end secondary machine with the following command:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

   In some instances, it may be required to stop |keepalived| on the back end secondary machine, then restart |keepalived| on the back end primary machine, and then restart |keepalived| on the back end secondary machine before the upgrade can be done successfully.

#. Upgrade each front end machine with the following commands:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

   and then followed by:

   .. code-block:: bash
      
      $ private-chef-ctl start

#. And then after the upgrade process is complete, clean every machine up to remove old data:

   .. code-block:: bash
   
      $ private-chef-ctl cleanup

   This process will remove old services, old data, messages about old services not running, and so on.

   .. note:: The message ``[ERROR] opscode-chef-mover is not running`` is expected, does not indicate an actual error, and is safe to ignore.