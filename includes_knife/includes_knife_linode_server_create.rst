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

``-D DATACENTER``, ``--linode-datacenter DATACENTER``
   |linode-datacenter|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-f FLAVOR``, ``--linode-flavor FLAVOR``
   |linode-flavor|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--linode-image IMAGE``
   |linode-image|

``-k KERNEL``, ``--linode-kernel KERNEL``
   |linode-kernel|

``-L NAME``, ``--linode-node-name NAME``
   |linode-node-name| 

``-N NAME``, ``--node-name NAME``
   |node-name|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--template-file TEMPLATE``
   |template-file|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

For example, to create a new instance, enter:

.. code-block:: bash

   $ xxxxx



