=====================================================
Upgrade to Enterprise Chef 11: Standalone
=====================================================

This topic describes the upgrade process from |chef private| to |chef server oec|. The upgrade process will require downtime equal to the amount of time it takes to stop the machine, run |debian dpkg| or |rpm|, and then upgrade the machine. The final step will remove older components (like the |couch db|) and will destroy the data after the upgrade process is complete.

To upgrade to |chef server oec|, do the following:

#. Stop the machine:

   .. code-block:: bash
      
      $ private-chef-ctl stop

#. Run |debian dpkg| or |rpm| on the machines. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -D10 -i <new package>

   where ``-D`` enables debugging and ``10`` creates output for each file that is processed during the upgrade. See the man pages for |debian dpkg| for more information about this option.
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm -Uvh <new package>

#. Upgrade the machine with the following command:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

#. After the upgrade process is complete, clean the machine up to remove old data:

   .. code-block:: bash
   
      $ private-chef-ctl cleanup

   This process will remove old services, old data, messages about old services not running, and so on.

#. Start |chef server oec|:

   .. code-block:: bash
   
      $ private-chef-ctl start

