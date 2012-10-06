.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |linode| cloud instance. This will provision a new image in |linode|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife linode server create (options)

This argument has the following options:

``-A KEY``, ``--linode-api-key KEY``
   |linode-api-key|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-D DATACENTER``, ``--linode-datacenter DATACENTER``
   |linode-datacenter|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f FLAVOR``, ``--linode-flavor FLAVOR``
   |linode-flavor|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--linode-image IMAGE``
   |linode-image|

``-k KEY``, ``--key KEY``
   |key|

``-k KERNEL``, ``--linode-kernel KERNEL``
   |linode-kernel|

``-L NAME``, ``--linode-node-name NAME``
   |linode-node-name| 

``-n``, ``--disable-editing``
   |no-editor|

``-N NAME``, ``--node-name NAME``
   |node-name|

``--no-color``
   |no-color|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``--print-after``
   |print-after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

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

For example, to create a new instance, enter:

.. code-block:: bash

   $ xxxxx



