=====================================================
Install |chef actions|
=====================================================

.. include:: ../../includes_actions/includes_actions.rst

Requirements
=====================================================
.. include:: ../../includes_system_requirements/includes_system_requirements_actions.rst

Install the Server
=====================================================
The |chef actions| server can be installed as part of a standalone or combined configuration.

Standalone
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_actions_server.rst

Combined
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_actions_server_combined.rst

Install the Client
=====================================================
.. include:: ../../includes_install/includes_install_actions_client.rst

Upgrade the Server
=====================================================
The |chef actions| add-on can be upgraded as part of a standalone or combined configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system.

#. Install the package on the same machines that are currently running |chef actions|. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-analytics_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure |chef actions| services on each server:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure
