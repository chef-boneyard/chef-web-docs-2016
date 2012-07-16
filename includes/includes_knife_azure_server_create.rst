.. This is an included file that describes a sub-command or argument in Knife.


The ``server create`` argument is used to create a new |windows azure| cloud instance. This will provision a new image in |windows azure|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife azure server create (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``--bootstrap-version VERSION``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
     - |azure-host-name|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-I IMAGE``, ``--source-image IMAGE``
     - |source-image|
   * - ``-m PREFIX``, ``--media-location PREFIX``
     - |media-location|
   * - ``-N NAME``, ``--node-name NAME``
     - |node-name| Node names in |chef|, when used with |windows azure|, must be 91 characters or shorter.
   * - ``--[no-]host-key-verify``
     - |[no-]host-key-verify|
   * - ``-o DISK_NAME``, ``--os-disk-name DISK_NAME``
     - |os-disk-name|
   * - ``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
     - |azure-pem-filename|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``-R ROLE_NAME``, ``--role-name ROLE_NAME``
     - |role-name|
   * - ``-s SERVICE_NAME``, ``--hosted-service-name SERVICE_NAME``
     - |hosted-service-name|
   * - ``-S ID``, ``--azure-subscription-id ID``
     - |azure-subscription-id|
   * - ``-t PORT_LIST``, ``--tcp-endpoints PORT_LIST``
     - |tcp-endpoints|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``--u PORT_LIST``, ``---udp-endpoints PORT_LIST``
     - |udp-endpoints|
   * - ``-x USER_NAME``, ``--ssh-user USER_NAME``
     - |ssh-user|
   * - ``-z SIZE``, ``--role-size SIZE``
     - |role-size|

For example, to xxxxx, enter:

.. code-block:: bash

   $ xxxxx



