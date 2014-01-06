.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``-1``
   |one_column| Default: ``false``.

``-c CONFIG_FILE``, ``--config CONFIG_FILE``
   |config|

``--chef-repo-path PATH``
   |path chef_repo| This setting will override the default path to the |chef repo|. Default: same as specified by ``chef_repo_path`` in config.rb.

``--chef-zero-port PORT``
   |port chef_zero|

``--[no-]color``
   |color|

``--concurrency``
   |concurrency| Default: ``10``.

``-d``
   |d knife list| Default value: ``false``.

``--defaults``
   |defaults|

``--disable-editing``
   |no_editor|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |name environment| When this option is added to a command, the command will run only against the named environment.

``-f``, ``--flat``
   |flat| Default: ``false``.

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help subcommand|

``-k KEY``, ``--key KEY``
   |key|

``--local``
   |local_directory| Default: ``false``.

``-p``
   |use trailing_slash| Default: ``false``.

``--print-after``
   |print_after|

``-R``
   |r knife list| Default: ``false``.

``--repo-mode MODE``
   |repo_mode| Default: ``everything`` / ``hosted_everything``.

``-s URL``, ``--server-url URL``
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