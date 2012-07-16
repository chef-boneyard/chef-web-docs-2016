.. This is an included file that describes a sub-command or argument in Knife.


The ``server create`` argument is used to create a new |eucalyptus| cloud instance. This will provision a new image in |eucalyptus|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife eucalyptus server create (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--euca-access-key-id ID``
     - |euca-access-key-id|
   * - ``--bootstrap-version VERSION``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``--euca-api-endpoint ENDPOINT``
     - |euca-api-endpoint|
   * - ``-f FLAVOR``, ``--flavor FLAVOR``
     - |flavor|
   * - ``-G X,Y,Z``, ``--groups X,Y,Z``
     - |groups|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-I IMAGE``, ``--image IMAGE``
     - |image|
   * - ``-K SECRET``, ``--euca-secret-access-key SECRET``
     - |euca-secret-access-key|
   * - ``-N NAME``, ``--node-name NAME``
     - |node-name|
   * - ``--[no-]host-key-verify``
     - |[no-]host-key-verify|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``--region REGION``
     - |region eucalyptus|
   * - ``-S KEY``, ``--ssh-key KEY``
     - |ssh-key eucalyptus|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-x USER_NAME``, ``--ssh-user USER_NAME``
     - |ssh-user|
   * - ``-Z ZONE``, ``--availability-zone ZONE``
     - |availability-zone eucalyptus|

For example, to create a new instance, enter:

.. code-block:: bash

   $ xxxxx



