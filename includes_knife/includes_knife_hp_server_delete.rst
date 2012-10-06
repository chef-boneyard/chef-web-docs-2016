.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |hp cloud| cloud. To find a specific cloud instance, use the ``knife hp server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife hp server delete [SERVER_NAME...]

This argument has the following options:

``-A ID``, ``--hp-account ID``
   |hp-account|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``--hp-auth URI``
   |hp-auth|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--hp-secret SECRET``
   |hp-secret|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name| This option only has meaning when used with the ``--purge`` option.

``-p``, ``--purge``
   |purge node hp|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-T ID``, ``--hp-tenant ID``
   |hp-tenant|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

``-Z ZONE``, ``--hp-zone ZONE``
   |hp-zone|

For example, to delete an instance named "65646", enter:

.. code-block:: bash

   $ knife hp server delete 65646

to return:

.. code-block:: bash

   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   
   WARNING: Deleted server 65646
