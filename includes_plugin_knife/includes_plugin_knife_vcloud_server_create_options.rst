.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-A USER_NAME``, ``--vcloud-username USER_NAME``
   The |vcloud| user name.

``--bootstrap-protocol PROTOCOL``
   The protocol used to bootstrap a |windows| server. Options: ``winrm``.

``--bootstrap-proxy PROXY_URL``
   |bootstrap-proxy|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-I IMAGE_ID``, ``--image IMAGE_ID``
   |image|

``-K PASSWORD``, ``--vcloud-password PASSWORD``
   The |vcloud| password.

``-m MEMORY``, ``--memory MEMORY``
   The amount of memory (in megabytes). Possible values: ``512``, ``1024``, ``1536``, ``2048``, ``4096``, ``8192``, ``12288``, or ``16384``.

``-N NAME``, ``--node-name NAME``
   |name_node|

``--network NETWORK_ID``
   The |vcloud| network ID.

``--no-bootstrap``
   Indicates whether the |chef| bootstrap is enabled.

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--template-file TEMPLATE``
   |template-file|

``-U HOST``, ``--vcloud-host HOST``
   The |vcloud| API endpoint.

``--vcpus VCPUS``
   The number of vCPUs per virtual machine. Possible values: ``1``, ``2``, ``4``, or ``8``.

``--verify-ssl-cert``
   Indicates whether SSL certificates are verified.
