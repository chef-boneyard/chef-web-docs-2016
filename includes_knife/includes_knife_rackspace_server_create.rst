.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |rackspace| cloud instance. This will provision a new image in |rackspace|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife rackspace server create (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A USER_NAME``, ``--rackspace-username USER_NAME``
     - |rackspace-username|
   * - ``--bootstrap-version VERSION"``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``-f FLAVOR``, ``--flavor FLAVOR``
     - |flavor|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-I IMAGE``, ``--image IMAGE``
     - |image|
   * - ``-j JSON_ATTRIBS``, ``--json-attributes``
     - |json-attributes|
   * - ``-K API_KEY``, ``--rackspace-api-key API_KEY``
     - |rackspace-api-key|
   * - ``-M JSON``, ``--rackspace-metadata JSON``
     - |rackspace-metadata|
   * - ``-N NAME``, ``--node-name NAME``
     - |node-name|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``--rackspace-api-auth-url``
     - |rackspace-api-auth-url|
   * - ``-S NAME``, ``--server-name NAME``
     - |server-name|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-x USERNAME``, ``--ssh-user USERNAME``
     - |ssh-user|


To launch a new Rackspace instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[webserver]' --server-name server01 --node-name server01 --image 49 --flavor 2

To launch a new Rackspace instance with multiple roles, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[base],role[webserver]' --server-name server01 -N server01 --image 49 --flavor 2

