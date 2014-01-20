.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-a [IP]``, ``--floating-ip [IP]``
   The floating IP address to be associated with a new |openstack| node (assuming that IP addresses have been allocated to the project).

``-A USER_NAME``, ``--openstack-username USER_NAME``
   The |openstack compute| user name.

``--bootstrap-protocol PROTOCOL``
   |bootstrap protocol|

``--bootstrap-proxy PROXY_URL``
   |bootstrap proxy|

``--bootstrap-version VERSION``
   |bootstrap version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-f FLAVOR_ID``, ``--flavor FLAVOR_ID``
   |flavor|

``-G X,Y,Z``, ``--groups X,Y,Z``
   |groups|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE_ID``, ``--image IMAGE_ID``
   |image|

``--insecure``
   Use to ignore SSL certificates for the Auth URL.

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json first_run_string|

``-K SECRET``, ``--openstack-password SECRET``
   The |openstack compute| password.

``-N NAME``, ``--node-name NAME``
   |name node|

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``--openstack-api-endpoint``
   |api openstack_endpoint|

``-p PORT``, ``--ssh-port PORT``
   |ssh_port| Default value: ``22``.

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh_password|

``--prerelease``
   |prerelease|

``--private-network``
   Indicates that a private IP address is used for a bootstrap operation. Default value: ``false`` (a public IP address).

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-S KEY``, ``--ssh-key KEY``
   |ssh_key openstack|

``--server-create-timeout TIMEOUT``
   |timeout| Default value: ``600``.

``-T NAME``, ``--openstack-tenant NAME``
   The |openstack compute| tenant name.

``--template-file TEMPLATE``
   |path bootstrap_template|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh_user|








