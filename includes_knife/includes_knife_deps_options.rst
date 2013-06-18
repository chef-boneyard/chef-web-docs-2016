.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:


``--[no-]recurse``
   Use to recursively list dependencies. This option can only be used when ``--tree`` is set to ``true``. Default: ``--recurse``.

``--remote``
   Indicates that dependencies will be determined from objects located on the |chef server| instead of the local |chef| repository. Default: ``true``.

``--tree``
   Indicates that dependencies are shown in a visual tree structure (including duplicates, if they exist). Default: ``true``.
