.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-A``, ``--forward-agent``
   |forward_agent|

``--bootstrap-no-proxy NO_PROXY_URL_or_IP``
   |bootstrap no_proxy| 

   .. note:: This option is used internally by |company_name| to help verify bootstrap operations during testing and should never be used during an actual bootstrap operation.

``--bootstrap-proxy PROXY_URL``
   |bootstrap proxy|

``--bootstrap-version VERSION``
   |bootstrap version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

   .. warning:: The default bootstrap operation uses the |omnibus installer|, which means the default template file (``chef-full``) should work on all supported platforms. It is recommended to use custom bootstrap templates only when the |omnibus installer| cannot be used. The ``.erb`` file extension is added automatically and should not be passed as part of the bootstrap command.

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |bootstrap environment|
   
``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh_gateway|

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
   |ssh_port|

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

``--sudo``
   |sudo bootstrap|

``--template-file TEMPLATE``
   |path bootstrap_template|

``--use-sudo-password``
   |use sudo_password|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh_user|

