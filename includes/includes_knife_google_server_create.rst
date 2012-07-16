.. This is an included file that describes a sub-command or argument in Knife.


The ``server create`` argument is used to create a new |google compute engine| cloud instance. This will provision a new image in |google compute engine|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife google server create SERVER_NAME [RUN_LIST] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``-e IP_ADDRESS``, ``--external-ip-address IP_ADDRESS``
     - |external-ip-address|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-f FLAVOR``, ``--flavor FLAVOR``
     - |flavor|
   * - ``-i PRIVATE_KEY_FILE``, ``--private-key-file PRIVATE_KEY_FILE``
     - |private-key-file|      
   * - ``-I IMAGE``, ``--google-image IMAGE``
     - |google-image|
   * - ``-k PUBLIC_KEY_FILE``, ``--public-key-file PUBLIC_KEY_FILE``]
     - |public-key-file|
   * - ``-n NETWORK_NAME``, ``--network NETWORK_NAME``
     - |network|
   * - ``-N NODE_NAME``, ``--node-name NODE_NAME``
     - |node-name|
   * - ``-s SERVER_NAME``, ``--server-name SERVER_NAME``
     - |server-name| 
   * - ``-p PROJECT``, ``--project_id PROJECT``
     - |project_id|
   * - ``-P IP_ADDRESS``, ``--internal-ip-address IP_ADDRESS``
     - |internal-ip-address|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``-x USER_NAME``, ``--ssh-user USER_NAME``
     - |ssh-user|
   * - ``-Z ZONE``, ``--availability-zone ZONE``
     - |availability-zone google|

For example, to create an instance, enter:

.. code-block:: bash

   $ xxxxx



