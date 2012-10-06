.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |eucalyptus| cloud instance. This will provision a new image in |eucalyptus|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife eucalyptus server create (options)

This argument has the following options:

``-A ID``, ``--euca-access-key-id ID``
   |euca-access-key-id|

``--bootstrap-version VERSION``
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

``--euca-api-endpoint ENDPOINT``
   |euca-api-endpoint|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f FLAVOR``, ``--flavor FLAVOR``
   |flavor|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-G X,Y,Z``, ``--groups X,Y,Z``
   |groups|

``-h``, ``--help``
   |help|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--image IMAGE``
   |image|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--euca-secret-access-key SECRET``
   |euca-secret-access-key|

``-n``, ``--disable-editing``
   |no-editor|

``-N NAME``, ``--node-name NAME``
   |node-name|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

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

``--region REGION``
   |region eucalyptus|

``-s URL``, ``--server-url URL``
   |server-url|

``-S KEY``, ``--ssh-key KEY``
   |ssh-key eucalyptus|

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
   |availability-zone eucalyptus|

For example, to create a new instance, enter:

.. code-block:: bash

   $ xxxxx



