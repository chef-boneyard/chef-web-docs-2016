.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |google compute engine| cloud instance. This will provision a new image in |google compute engine|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife google server create SERVER_NAME [RUN_LIST] (options)

This argument has the following options:

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

``-e IP_ADDRESS``, ``--external-ip-address IP_ADDRESS``
   |external-ip-address|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f FLAVOR``, ``--flavor FLAVOR``
   |flavor|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-i PRIVATE_KEY_FILE``, ``--private-key-file PRIVATE_KEY_FILE``
   |private-key-file|    

``-I IMAGE``, ``--google-image IMAGE``
   |google-image|

``-k KEY``, ``--key KEY``
   |key|

``-k PUBLIC_KEY_FILE``, ``--public-key-file PUBLIC_KEY_FILE``]
   |public-key-file|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``-n NETWORK_NAME``, ``--network NETWORK_NAME``
   |network|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name|

``-p PROJECT``, ``--project_id PROJECT``
   |project_id|

``-P IP_ADDRESS``, ``--internal-ip-address IP_ADDRESS``
   |internal-ip-address|

``--print-after``
   |print-after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-s SERVER_NAME``, ``--server-name SERVER_NAME``
   |server-name| 

``-s URL``, ``--server-url URL``
   |server-url|

``--template-file TEMPLATE``
   |template-file|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

``-y``, ``--yes``
   |yes|

``-Z ZONE``, ``--availability-zone ZONE``
   |availability-zone google|

For example, to create an instance, enter:

.. code-block:: bash

   $ xxxxx



