.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for test-kitchen.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``--api-port PORT``
   The HTTP port on which the |api delivery| is listening.

``-c``, ``--config-path=PATH``
   |path directory_delivery|

``--data``
   |delivery data_api|

``-e``, ``--ent=ENTERPRISE``
   |delivery enterprise|

``-s``, ``--server=SERVER``
   |delivery server| This must be the |fqdn| for the |chef delivery| server. For example: ``delivery.example.com``.

``-u``, ``--user=USER``
   |delivery user| This user must exist in the specified enterprise (``--ent``).
