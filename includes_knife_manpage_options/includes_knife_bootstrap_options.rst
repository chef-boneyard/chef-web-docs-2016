.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-A``, ``--forward-agent``
   |forward_agent|

``--bootstrap-no-proxy NO_PROXY_URL_or_IP``
   |bootstrap no_proxy| Note: This option is used internally by |company_name| to help verify bootstrap operations during testing and should never be used during an actual bootstrap operation.

``--bootstrap-proxy PROXY_URL``
   |bootstrap proxy|

``--bootstrap-version VERSION``
   |bootstrap version|

``-c CONFIG_FILE``, ``--config CONFIG_FILE``
   |config|

``--chef-zero-port PORT``
   |port chef_zero|

``--[no-]color``
   |color|

``-d DISTRO``, ``--distro DISTRO``
   .. warning:: The default bootstrap operation uses the |omnibus installer|, which means the default template file (``chef-full``) should work on all supported platforms. It is recommended to use custom bootstrap templates only when the |omnibus installer| cannot be used.
   
   |distro|

``--defaults``
   |defaults|

``--disable-editing``
   |no_editor|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |name environment| When this option is added to a command, the command will run only against the named environment.

``-F FORMAT``, ``--format FORMAT``
   |format|

``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh_gateway|

``-h``, ``--help``
   |help subcommand|

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``--[no-]host-key-verify``
   |no_host_key_verify| Default setting: ``--host-key-verify``.

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json first_run_string|

``-k KEY``, ``--key KEY``
   |key|

``-N NAME``, ``--node-name NAME``
   |name node|

``-p PORT``, ``--ssh-port PORT``
   |ssh_port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh_password|

``--prerelease``
   |prerelease|

``--print-after``
   |print_after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-s URL``, ``--server-url URL``
   |url chef_server|

``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

``--sudo``
   |sudo bootstrap|

``--template-file TEMPLATE``
   |path bootstrap_template|

``-u USER``, ``--user USER``
   |user knife|

``--use-sudo-password``
   |use sudo_password|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
  |verbose|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh_user|

``-y``, ``--yes``
   |yes|

``-z``, ``--local-mode``
   |local_mode|