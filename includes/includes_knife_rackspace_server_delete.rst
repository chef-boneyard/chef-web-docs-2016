.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |rackspace| cloud. To find a specific cloud instance, use the ``knife rackspace server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife rackspace server delete [SERVER_ID...]

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-K API_KEY``, ``--rackspace-api-key API_KEY``
     - |rackspace-api-key|
   * - ``-A USER_NAME``, ``--rackspace-username USER_NAME``
     - |rackspace-username|
   * - ``--rackspace-api-auth-url``
     - |rackspace-api-auth-url|

For example, to delete a |rackspace| instance with an Instance ID of "12345678", enter:

.. code-block:: bash

   $ knife rackspace server delete 12345678

to return:

.. code-block:: bash

   Instance ID: 12345678
   Host ID: testexample
   Name: slice12345678
   Flavor: 1GB server
   Image: Ubuntu 10.04 LTS (lucid)
   Public DNS Name: 1-1-1-1.static.cloud-ips.com
   Public IP Address: 1.1.1.1
   Private IP Address: 192.168.1.1

Confirm the deletion:

.. code-block:: bash

   Do you really want to delete this server? (Y/N) Y
   WARNING: Deleted server 12345678 named slice12345678
