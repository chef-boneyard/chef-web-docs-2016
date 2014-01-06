.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``-c CONFIG_FILE``, ``--config CONFIG_FILE``
   |config|

``--chef-repo-path PATH``
   |path chef_repo| This setting will override the default path to the |chef repo|. Default: same as specified by ``chef_repo_path`` in config.rb.

``--chef-zero-port PORT``
   |port chef_zero|

``--[no-]color``
   |color|

``--cookbook-version VERSION``
   The version of a cookbook to be downloaded.

``--concurrency``
   |concurrency| Default: ``10``.

``-d``, ``--disable-editing``
   |no_editor|

``--defaults``
   |defaults|

``--diff-filter=[(A|D|M|T)...[*]]``
   |diff_filter| Default value: ``nil``.

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

``--name-only``
   |name only|

``--name-status``
   |name status|

``--no-recurse``
   |no_recurse_diff| Default: ``--recurse``.

``--print-after``
   |print_after|

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
