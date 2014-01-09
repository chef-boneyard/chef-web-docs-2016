.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``--azure-affinity-group GROUP``
   |azure affinity_group| Required when not using ``--azure-service-location``.

``--azure-availability-set NAME``
   |azure availability_set|

``--azure-dns-name DNS_NAME``
   |azure dns_name|

``--azure-network-name NETWORK_NAME``
   |azure network_name|

``--azure-publish-settings-file FILE_NAME``
   |file azure_publish_settings|

``--azure-storage-account STORAGE_ACCOUNT_NAME``
   |storage account| A storage account name may be between 3 and 24 characters (lower-case letters and numbers only) and must be unique within |windows azure|.

``--azure-subnet-name SUBNET_NAME``
   |azure subnet_name|

``--azure-vm-name NAME``
   |azure virtual_machine_name|

``--bootstrap-protocol PROTOCOL``
   |bootstrap protocol| Default value: ``winrm``.

``--bootstrap-version VERSION``
   |bootstrap version|

``-c``, ``--azure-connect-to-existing-dns``
   |azure connect_to_existing_dns|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |name virtual_machine|

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``--host-name HOST_NAME``
   |azure_host_name|

``-I IMAGE``, ``--azure-source-image IMAGE``
   |source-image|

``--identity-file IDENTITY_FILE``
   |identity-file|

``--identity-file_passphrase PASSWORD``
   |identity_file_passphrase|

``-m LOCATION``, ``--azure-service-location LOCATION``
   |media location| Required when not using ``--azure-affinity-group``.

``-N NAME``, ``--node-name NAME``
   |name node| Node names, when used with |windows azure|, must be 91 characters or shorter.

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``-o DISK_NAME``, ``--azure-os-disk-name DISK_NAME``
   |os-disk-name|

``-p FILE_NAME``, ``--azure-mgmt-cert FILE_NAME``
   |azure_pem_filename|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh_password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-R ROLE_NAME``, ``--role-name ROLE_NAME``
   |role-name|

``--ssh-port PORT``
   |ssh_port| Default value: ``22``.

``-t PORT_LIST``, ``--tcp-endpoints PORT_LIST``
   |tcp_ports|

``--template-file TEMPLATE``
   |path bootstrap_template|

``-u PORT_LIST``, ``---udp-endpoints PORT_LIST``
   |udp_ports|

``--verify-ssl-cert``
   |ssl_certificate|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh_user|

``-z SIZE``, ``--azure-vm-size SIZE``
   |role-size| Default value: ``Small``.

