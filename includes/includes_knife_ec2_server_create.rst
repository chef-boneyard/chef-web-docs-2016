.. This is an included file that describes a sub-command or argument in Knife.


The ``server create`` argument is used to create a new |amazon ec2| cloud instance. This will provision a new image in |amazon ec2|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife ec2 server create (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A KEY``, ``--aws-access-key-id KEY``
     - |aws-access-key-id|
   * - ``--bootstrap-version VERSION``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``--ebs-size SIZE``
     - |ebs-size|
   * - ``--ebs-no-delete-on-term``
     - |ebs-no-delete-on-term|
   * - ``-f FLAVOR``, ``--flavor FLAVOR``
     - |flavor|
   * - ``-G X,Y,Z``, ``--groups X,Y,Z``
     - |groups|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-I IMAGE``, ``--image IMAGE``
     - |image|
   * - ``--K SECRET``, ``--aws-secret-access-key SECRET``
     - |aws-secret-access-key|
   * - ``-N NAME``, ``--node-name NAME``
     - |node-name|
   * - ``--[no-]host-key-verify``
     - |[no-]host-key-verify|
   * - ``-p PORT``, ``--ssh-port PORT``
     - |ssh-port|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``--region REGION``
     - |region amazon|
   * - ``-s SUBNET-ID``, ``--subnet SUBNET-ID``
     - |subnet|
   * - ``-S KEY``, ``--ssh-key KEY``
     - |ssh-key amazon ec2|
   * - ``--T Tag=Value[,Tag=Value]``, ``--tags Tag=Value[,Tag=Value]``
     - |tags|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-u USER_DATA_FILE``, ``--user-data USER_DATA_FILE``
     - |user-data|
   * - ``-x USERNAME``, ``--ssh-user USERNAME``
     - |ssh-user|
   * - ``-Z ZONE"``, ``--availability-zone ZONE``
     - |availability-zone amazon ec2|

For example, to launch a new Amazon EC2 instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[webserver]" -I ami-2d4aa444 --flavor m1.small -G www,default -x ubuntu -N server01

To launch a new Amazon EC2 instance with multiple roles, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[base],role[webserver]" -I ami-2d4aa444 -G www,default -x ubuntu --node-name server01



