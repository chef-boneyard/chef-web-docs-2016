=====================================================
Install |chef manage|
=====================================================

.. include:: ../../includes_manage/includes_manage.rst

Requirements
=====================================================
.. include:: ../../includes_system_requirements/includes_system_requirements_manager.rst

Install the Server
=====================================================
The |chef manage| server can be installed as part of a standalone or high availability configuration.

Standalone
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_manager_server.rst

High Availability
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_manager_server_ha.rst

Upgrade the Server
=====================================================
The |chef manage| server can be upgraded as part of a standalone or high availability configuration.

To upgrade the |chef manage| server:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system.

#. Install the package on the same front end machines that are running |chef server oec|, version 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-manage_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ opscode-manage-ctl reconfigure

   This step is required for each of the front end servers in the |chef server oec| deployment. For example, in a configuration with two back end servers and three front end servers, this command would need to be run on all three front end machines.



