.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |hp cloud| cloud. To find a specific cloud instance, use the ``knife hp server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife hp server delete [SERVER_NAME...]

This argument has the following options:

``-A ID``, ``--hp-account ID``
   |hp-account|

``--hp-auth URI``
   |hp-auth|

``-K SECRET``, ``--hp-secret SECRET``
   |hp-secret|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name| This option only has meaning when used with the ``--purge`` option.

``-T ID``, ``--hp-tenant ID``
   |hp-tenant|

``-Z ZONE``, ``--hp-zone ZONE``
   |hp-zone|

**Examples**

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
