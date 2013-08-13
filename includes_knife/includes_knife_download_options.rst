.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``--chef-repo-path PATH``
   |path chef_repo| This setting will override the default path to the |chef repo|. Default: same as specified by ``chef_repo_path`` in config.rb.

``--concurrency``
   |concurrency| Default: ``10``.

``--force``
   |force knife download| Default: ``--no-force``.

``-n``, ``--dry-run``
   |dry_run| Default: ``false``.

``--[no-]diff``
   |diff_download| Set to ``false`` to download all files. Default: ``--diff``.

``--[no-]recurse``
   |no_recurse_download| Default: ``--recurse``.

``--purge``
   |purge knife download| Default: ``--no-purge``.

``--repo-mode MODE``
   |repo_mode| Default value: ``default``.
