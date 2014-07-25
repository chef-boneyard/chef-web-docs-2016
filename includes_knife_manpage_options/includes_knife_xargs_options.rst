.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``-0``
   |use null_character| Default: ``false``.

``--chef-repo-path PATH``
   |path chef_repo| This setting will override the default path to the |chef repo|. Default: same as specified by ``chef_repo_path`` in config.rb.

``--concurrency``
   |concurrency| Default: ``10``.

``--[no-]diff``
   |no_diff| Default: ``--diff``.

``--dry-run``
   |dry_run no_upload| Default: ``false``.

``--[no-]force``
   |no_force| Default: ``--no-force``. 

``-I REPLACE_STRING``, ``--replace REPLACE_STRING``
   |replace_string| Default: ``nil``.

``-J REPLACE_STRING``, ``--replace-first REPLACE_STRING``
   |replace_file| Default: ``nil``.

``--local``
   |build_local_file| Set to ``false`` to build or execute against a remote file. Default: ``false``.

``-n MAX_ARGS``, ``--max-args MAX_ARGS``
   |max_args| Default: ``nil``.

``-p [PATTERN...]``, ``--pattern [PATTERN...]``
   |pattern command_line| Default: ``nil``.

``--repo-mode MODE``
   |repo_mode| Default value: ``default``.

``-s LENGTH``, ``--max-chars LENGTH``
   |max_chars| Default: ``nil``.

``-t``
   |print_on_command_line| Default: ``nil``.

``-c CONFIG_FILE``, ``--config CONFIG_FILE``
   |config|

``--chef-zero-port PORT``
   |port chef_zero|

``-d``, ``--disable-editing``
   |no_editor|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |name environment| When this option is added to a command, the command will run only against the named environment.

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help subcommand|

``-k KEY``, ``--key KEY``
   |key|

``--[no-]color``
   |color|

``--print-after``
   |print_after|

``--server-url URL``
   |url chef_server|

``-u USER``, ``--user USER``
   |user knife|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
  |verbose|

``-y``, ``--yes``
   |yes|

``-z``, ``--local-mode``
   |local_mode|

