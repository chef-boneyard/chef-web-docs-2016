.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-A``, ``--forward-agent``
   Indicates that SSH agent forwarding is enabled.

``--bootstrap-proxy PROXY_URL``
   |bootstrap proxy|

``--bootstrap-version VERSION``
   |bootstrap version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json first_run_string|

``-N NAME``, ``--node-name NAME``
   |name node|

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

``--sudo``
   |sudo bootstrap|

``--template-file TEMPLATE``
   |path bootstrap_template|

``--use-sudo-password``
   Indicates that a bootstrap operation is done using |sudo|, with the password specified by the ``-P`` (or ``--ssh-password``) option.

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh-user|

