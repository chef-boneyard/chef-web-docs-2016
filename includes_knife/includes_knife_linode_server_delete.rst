.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |linode| cloud. To find a specific cloud instance, use the ``knife linode server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife linode server delete LINODE_ID

This argument has the following options:

``-A KEY``, ``--linode-api-key KEY``
   |linode-api-key|

