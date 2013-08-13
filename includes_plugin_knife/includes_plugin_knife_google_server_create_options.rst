.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``--bootstrap-version VERSION``
   |bootstrap version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-f CREDENTIAL_FILE``, ``--compute-credential-file CREDENTIAL_FILE``
   |credential_file google|

``--google-compute-disks DISK1,DISK2``
   |google_compute_disks|

``--google-compute-public-ip IP_ADDRESS``
   |google_compute_public_ip| Default value: ``EPHEMERAL``.

``--google-compute-server-connect-ip PUBLIC``
   |google_compute_server_connect_ip| Default value: ``PUBLIC``.

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--google-compute-image IMAGE``
   |google_image| Default: ``gcompute8-standard``.

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json first_run_string|

``-m MACHINE_TYPE``, ``--google-compute-machine MACHINE_TYPE``
   |google_compute_machine_type|

``-M K=V[,K=V,...]``, ``--google-compute-metadata Key=Value[,Key=Value...]``
   |google_compute_metadata|

``-n NETWORK_NAME``, ``--google-compute-network NETWORK_NAME``
   |google_compute_network|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |name node|

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``-p PORT``, ``--ssh-port PORT``
   |ssh-port| Default value: ``22``.

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-T TAG1,TAG2,TAG3``, ``--google-compute-tags TAG1,TAG2,TAG3``
   |google_compute_tags|

``--template-file TEMPLATE``
   |path bootstrap_template|

``-u USER_DATA_FILE``, ``--user-data USER_DATA_FILE``
   |google_compute_user_data|

``-w GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

``-Z ZONE``, ``--google-compute-zone ZONE``
   |zone google|
