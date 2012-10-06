.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |rackspace| cloud instance. This will provision a new image in |rackspace|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife rackspace server create (options)

This argument has the following options:

``-A USER_NAME``, ``--rackspace-username USER_NAME``
   |rackspace-username|

``--bootstrap-version VERSION"``
   |bootstrap-version|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f FLAVOR``, ``--flavor FLAVOR``
   |flavor|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--image IMAGE``
   |image|

``-j JSON_ATTRIBS``, ``--json-attributes``
   |json-attributes|

``-k KEY``, ``--key KEY``
   |key|

``-K API_KEY``, ``--rackspace-api-key API_KEY``
   |rackspace-api-key|

``-M JSON``, ``--rackspace-metadata JSON``
   |rackspace-metadata|

``-n``, ``--disable-editing``
   |no-editor|

``-N NAME``, ``--node-name NAME``
   |node-name|

``--no-color``
   |no-color|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``--print-after``
   |print-after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--rackspace-api-auth-url``
   |rackspace-api-auth-url|

``-s URL``, ``--server-url URL``
   |server-url|

``-S NAME``, ``--server-name NAME``
   |server-name|

``--template-file TEMPLATE``
   |template-file|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh-user|

``-y``, ``--yes``
   |yes|

To launch a new Rackspace instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[webserver]' --server-name server01 --node-name server01 --image 49 --flavor 2

To launch a new Rackspace instance with multiple roles, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[base],role[webserver]' --server-name server01 -N server01 --image 49 --flavor 2

