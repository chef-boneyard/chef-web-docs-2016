=====================================================
Upgrade |chef compliance|
=====================================================

The following sections describe the upgrade process for |chef compliance|.

Prerequisites
=====================================================
This section describes the prereqs for the upgrade

#. Previously installed |chef compliance| software.
#. ``sudo`` or ``root`` access to the machine.

Upgrade
=====================================================
This section describes the upgrade process:

#. Verify the currently installed version:

   .. code-block:: bash

      curl -k https://localhost/api/version

#. Stop the services:

   .. code-block:: bash

      chef-compliance-ctl stop

#. Run |debian dpkg| or |rpm|. For |debian dpkg|:

   .. code-block:: bash

      dpkg -i /path/to/chef-compliance-<version>.deb

   For |rpm|:

   .. code-block:: bash

      rpm -Uvh /path/to/chef-compliance-<version>.rpm

#. Start the database to allow connections during the  ``reconfigure`` step:

   .. code-block:: bash

      chef-compliance-ctl start postgresql

#. Reconfigure the services:

   .. code-block:: bash

      chef-compliance-ctl reconfigure

#. Start the services:

   .. code-block:: bash

      chef-compliance-ctl start

#. Check the status of the services:

   .. code-block:: bash

      chef-compliance-ctl status

#. Verify the installed version now:

   .. code-block:: bash

      curl -k https://localhost/api/version

#. Tail all |chef compliance| logs if something is not working right:

   .. code-block:: bash

      chef-compliance-ctl tail
