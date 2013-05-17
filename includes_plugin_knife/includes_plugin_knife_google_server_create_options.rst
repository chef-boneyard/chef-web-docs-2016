.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``--bootstrap-version VERSION``
   |bootstrap-version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-f CREDENTIAL_FILE``, ``--compute-credential-file CREDENTIAL_FILE``
   The credential file used by |google compute engine|. (This file is created when running the ``knife google setup`` command.)

``--google-compute-disks DISK1,DISK2``
   A comma-separated list of disks to be attached.

``--google-compute-public-ip IP_ADDRESS``
   The public IP address for |google compute engine|. Options: ``EPHEMERAL``, a static IP address, or ``NONE``. Default value: ``EPHEMERAL``.

``--google-compute-server-connect-ip PUBLIC``
   Indicates whether the IP address for |google compute engine| is ``PUBLIC`` or ``PRIVATE``. Default value: ``PUBLIC``.

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--google-compute-image IMAGE``
   |google-image|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json-attributes|

``-m MACHINE_TYPE``, ``--google-compute-machine MACHINE_TYPE``
   The machine type for the instance running in |google compute engine| server. For example, ``n1-highcpu-2`` or ``n1-highcpu-2-d``. The full list of available machine types: https://developers.google.com/compute/docs/instances.

``-M K=V[,K=V,...]``, ``--google-compute-metadata Key=Value[,Key=Value...]``
   A list of metadata key-value pairs that are associated with an instance.

``-n NETWORK_NAME``, ``--google-compute-network NETWORK_NAME``
   The name of the network in which an instance is running.

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |name_node|

``--[no-]host-key-verify``
   |[no-]host-key-verify| Default setting: ``--host-key-verify``.

``-p PORT``, ``--ssh-port PORT``
   |ssh-port| Default value: ``22``.

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-T TAG1,TAG2,TAG3``, ``--google-compute-tags TAG1,TAG2,TAG3``
   A list of tags that are associated with an instance.

``--template-file TEMPLATE``
   |template-file|

``-u USER_DATA_FILE``, ``--user-data USER_DATA_FILE``
   The user data file used to provision |google compute engine|.

``-w GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

``-Z ZONE``, ``--google-compute-zone ZONE``
   The |google compute engine| in which the disk is located.
