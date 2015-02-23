.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

To upgrade to |chef server| 12 from a standalone |chef server oec| server, do the following:

#. Verify that the ``make`` command is available on the |chef server oec| machine. If it is not available, install the ``make`` command.

#. Run the following command to make sure all services are in a sane state.

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

#. Stop the machine:

   .. code-block:: bash
      
      $ chef-server-ctl stop

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


