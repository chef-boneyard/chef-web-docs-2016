.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``--[no-]diff``
   Use to show a diff when a file changes. Default: ``--diff``.

``--dry-run``
   Use to prevent changes from being uploaded to the |chef server|. Default: ``false``.

``--[no-]force``
   Use to force the upload of files even if they haven't been changed. Default: ``--no-force``. 

``--local``
   Indicates that a command line will be built or executed against a local file. Set to ``false`` to build or execute against a remote file. Default: ``false``.

``-n MAX_ARGS``, ``--max-args MAX_ARGS``
   The maximum number of arguments per command line. Default: ``nil``.

``-s LENGTH``, ``--max-chars LENGTH``
   The maximum size (in characters) for a command line. Default: ``nil``.

``-0``
   Indicates that a ``NULL`` character (``\0``) will be used as a separator, instead of white space. Default: ``false``.

``-p [PATTERN...]``, ``--pattern [PATTERN...]``
   One (or more) patterns for a command line. If this option is not specified, a list of patterns may be expected on standard input. Default: ``nil``.

``-I REPLACE_STRING``, ``--replace REPLACE_STRING``
   Use to define a string that will be used to replace all occurrences of a file name. Default: ``nil``.

``-J REPLACE_STRING``, ``--replace-first REPLACE_STRING``
   Use to define a string that will be used to replace the first occurrence of a file name. Default: ``nil``.

``-t``
   Indicates that the print command will be run on the command line. Default: ``nil``.


