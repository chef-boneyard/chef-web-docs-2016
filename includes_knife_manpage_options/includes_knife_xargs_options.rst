.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``-0``
   Indicates that a ``NULL`` character (``\0``) will be used as a separator, instead of white space. Default: ``false``.

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

``-d``, ``--disable-editing``
   |no_editor|

``--defaults``
   |defaults|

``--[no-]diff``
   Use to show a diff when a file changes. Default: ``--diff``.

``--dry-run``
   Use to prevent changes from being uploaded to the |chef server|. Default: ``false``.

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |name environment| When this option is added to a command, the command will run only against the named environment.

``-F FORMAT``, ``--format FORMAT``
   |format|

``--[no-]force``
   Use to force the upload of files even if they haven't been changed. Default: ``--no-force``. 

``-h``, ``--help``
   |help subcommand|

``-I REPLACE_STRING``, ``--replace REPLACE_STRING``
   Use to define a string that will be used to replace all occurrences of a file name. Default: ``nil``.

``-J REPLACE_STRING``, ``--replace-first REPLACE_STRING``
   Use to define a string that will be used to replace the first occurrence of a file name. Default: ``nil``.

``-k KEY``, ``--key KEY``
   |key|

``--local``
   Indicates that a command line will be built or executed against a local file. Set to ``false`` to build or execute against a remote file. Default: ``false``.

``-n MAX_ARGS``, ``--max-args MAX_ARGS``
   The maximum number of arguments per command line. Default: ``nil``.

``-p [PATTERN...]``, ``--pattern [PATTERN...]``
   One (or more) patterns for a command line. If this option is not specified, a list of patterns may be expected on standard input. Default: ``nil``.

``--print-after``
   |print_after|

``--repo-mode MODE``
   |repo_mode| Default value: ``default``.

``-s LENGTH``, ``--max-chars LENGTH``
   The maximum size (in characters) for a command line. Default: ``nil``.

``--server-url URL``
   |url chef_server|

``-t``
   Indicates that the print command will be run on the command line. Default: ``nil``.

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

