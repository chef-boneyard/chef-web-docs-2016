.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``--chef-repo-path PATH``
   |path chef_repo| This setting will override the default path to the |chef repo|. Default: same value as specified by ``chef_repo_path`` in |client rb|.

``--concurrency``
   |concurrency| Default: ``10``.

``--[no-]recurse``
   |no_recurse_deps| This option can only be used when ``--tree`` is set to ``true``. Default: ``--no-recurse``.

``--remote``
   |remote deps_on_server| Default: ``false``.

``--repo-mode MODE``
   |repo_mode| Default: ``everything`` / ``hosted_everything``.

``--tree``
   |tree| Default: ``false``.

