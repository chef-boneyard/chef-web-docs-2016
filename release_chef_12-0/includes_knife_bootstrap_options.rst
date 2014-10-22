.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-A``, ``--forward-agent``
   |forward_agent|

``--bootstrap-curl-options OPTIONS``
   |bootstrap curl_options| |bootstrap no_install_command|

``--bootstrap-install-command COMMAND``
   |bootstrap install_command| |bootstrap no_curl_sh_wget|
 
``--bootstrap-install-sh URL``
   |bootstrap install_sh| |bootstrap no_install_command|

``--bootstrap-no-proxy NO_PROXY_URL_or_IP``
   |bootstrap no_proxy|

   .. note:: This option is used internally by |company_name| to help verify bootstrap operations during testing and should never be used during an actual bootstrap operation.

``--bootstrap-proxy PROXY_URL``
   |bootstrap proxy|
   
``--bootstrap-version VERSION``
   |bootstrap version|

``--bootstrap-wget-options OPTIONS``
   |bootstrap wget_options| |bootstrap no_install_command|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |name environment| When this option is added to a command, the command will run only against the named environment.

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

``-t TEMPLATE``, ``--bootstrap-template TEMPLATE``
   |template bootstrap| Default value: ``chef-full``, which installs the |chef client| using the |omnibus installer| on all supported platforms.

``--use-sudo-password``
   |use sudo_password|

``-V -V``
   |verbose knife_bootstrap|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh_user|

