.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-A KEY``, ``--aws-access-key-id KEY``
   |aws_access_key_id|

``-bootstrap-protocol PROTOCOL``
   |bootstrap protocol|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``--ebs-size SIZE``
   |ebs-size|

``--ebs-no-delete-on-term``
   |ebs-no-delete-on-term|

``-ephemeral DEVICE``
   |ephemeral device|

``-f FLAVOR``, ``--flavor FLAVOR``
   |flavor|

``-fqdn FQDN``
   |fqdn| This value should be pre-defined.

``-g X,Y,Z``, ``--security-group-ids X,Y,Z``
   |group ids| Required when using |amazon vpc|.

``-G X,Y,Z``, ``--groups X,Y,Z``
   |groups| Not supported when using |amazon vpc|.

``-hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--image IMAGE``
   |image|

``-K SECRET``, ``--aws-secret-access-key SECRET``
   |aws_access_key_secret|

``-N NAME``, ``--node-name NAME``
   |name_node|

``--[no-]host-key-verify``
   |[no-]host-key-verify| Default setting: ``--host-key-verify``.

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--region REGION``
   |region amazon|

``-s SUBNET_ID``, ``--subnet SUBNET_ID``
   |subnet|

``-S KEY``, ``--ssh-key KEY``
   |ssh-key amazon ec2|

``-server-connect-attribute ATTRIBUTE``
   |attribute ssh| This should be an |amazon ec2| server attribute.

``--T Tag=Value[,Tag=Value]``, ``--tags Tag=Value[,Tag=Value]``
   |tags|

``--template-file TEMPLATE``
   |template-file|

``-u USER_DATA_FILE``, ``--user-data USER_DATA_FILE``
   |user-data|

``-w GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh-user|

``-Z ZONE"``, ``--availability-zone ZONE``
   |availability_zone| Default: ``us-east-1b``.

