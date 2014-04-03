.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``--bootstrap-version VERSION``
   |bootstrap version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-f CREDENTIAL_FILE``, ``--gce-credential-file CREDENTIAL_FILE``
   |credential_file google|

``--gce-boot-disk-name DISK``
   The name of the persistent boot disk.

``--gce-boot-disk-size SIZE``
   The size (in GB) of the persistent boot disk. This must be a value between 10 and 10000. Default value: ``10``.

``--gce-image-project-id IMAGE_PROJECT_ID``
   The ID for the project that contains the image.

``--gce-metadata Key=Value[,Key=Value...]``
   |google_compute_metadata|

``--gce-public-ip IP_ADDRESS``
   |google_compute_public_ip| Options: ``EPHEMERAL``, a static IP address, or ``NONE``. Default value: ``EPHEMERAL``.

``--gce-server-connect-ip PUBLIC``
   |google_compute_server_connect_ip| Default value: ``PUBLIC``.

``--gce-service-account-name NAME``
   The name of the service account associated with the server. The typical format is similar to: ``12345678@project.gceserviceaccount.com``. Default value: ``'default'``.

``--gce-service-account-scopes SCOPE1, SCOPE2, SCOPE3``
   Additional metadata for the server.

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--gce-image IMAGE``
   |google_image| Default: ``gcompute8-standard``.

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json first_run_string|

``-m MACHINE_TYPE``, ``--gce-machine MACHINE_TYPE``
   |google_compute_machine_type|

``-n NETWORK_NAME``, ``--gce-network NETWORK_NAME``
   |google_compute_network|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |name node|

``--[no-]gce-auto-server-restart``
   Use to specify if |google compute engine| will automatically restart the virtual machine instance if it is terminated by non-user initiated actions. Default value: ``true``.

``--[no-]gce-auto-server-migrate``
   Use to specify if |google compute engine| can migrate the virtual machine instance without downtime, prior to periodic infrastructure maintenance. Default value: ``true``.

``-p PORT``, ``--ssh-port PORT``
   |ssh_port| Default value: ``22``.

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh_password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

``-T TAG1,TAG2,TAG3``, ``--gce-tags TAG1,TAG2,TAG3``
   |google_compute_tags|

``--template-file TEMPLATE``
   |path bootstrap_template|

``-u USER_DATA_FILE``, ``--user-data USER_DATA_FILE``
   |google_compute_user_data|

``-w GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh_gateway|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh_user|

``-Z ZONE``, ``--gce-zone ZONE``
   |zone google|
