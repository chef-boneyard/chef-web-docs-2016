.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-a SSH_ATTR``, ``--attribute SSH_ATTR``
   |attribute ssh| The default attribute is the |fqdn| of the host. Other possible values include a public IP address, a private IP address, or a hostname.

``-C NUM``, ``--concurrency NUM``
   |concurrency|

``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``-i IDENTITY_FILE``, ``--identity-file IDENTIFY_FILE``
   |identity-file|

``-m``, ``--manual-list``
   |manual-list| If there is more than one item in the list, put quotes around the entire list. For example: ``--manual-list "server01 server 02 server 03"``

``--[no-]host-key-verify``
   |[no-]host-key-verify| Default setting: ``--host-key-verify``.

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``SEARCH_QUERY``
   |search_query ssh|

``SSH_COMMAND``
   |ssh_command|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

