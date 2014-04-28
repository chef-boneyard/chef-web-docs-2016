=====================================================
Install |reporting|
=====================================================

.. include:: ../../includes_reporting/includes_reporting.rst

Requirements
=====================================================
.. include:: ../../includes_system_requirements/includes_system_requirements_reporting.rst

Install the Server
=====================================================
The |reporting| server can be installed as part of a standalone or high availability configuration.

Standalone
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_reporting_server.rst

High Availability
-----------------------------------------------------
.. warning:: This option requires |reporting| version 1.0.1.

.. include:: ../../includes_install/includes_install_reporting_server_ha.rst

Install the Client
=====================================================
.. include:: ../../includes_install/includes_install_reporting_client.rst

Install the Workstation
=====================================================
.. include:: ../../includes_install/includes_install_reporting_workstation.rst

Upgrade the Server
=====================================================
The |reporting| add-on can be upgraded as part of a standalone or high availability configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system.

#. Install the package on the same machines that are currently running |reporting|. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-reporting_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure |reporting| services on each server:

   .. code-block:: bash

      $ opscode-reporting-ctl reconfigure