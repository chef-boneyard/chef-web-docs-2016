.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following steps to set up each frontend |chef server|:

#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed. The |chef ha| package is **not** required on front end machines.

#. Create the ``/etc/opscode/`` directory, and then copy the entire contents of the ``/etc/opscode`` directory from the primary, including all certificates and the |chef server rb| file.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following commands:

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure
