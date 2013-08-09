.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``--both``
   |delete_local_and_remote| Default: ``false``.

``--chef-repo-path PATH``
   The path to the |chef repo|. This setting will override the default path to the |chef repo|. Default: same as specified by ``chef_repo_path`` in config.rb.

``--concurrency``
   The maximum number of simultaneous requests to be sent. Default: ``10``.

``--local``
   |local_object| Default: ``false``.

``--[no-]recurse``
   |no_recurse_delete| Default: ``--no-recurse``.

``--repo-mode MODE``
   |repo_mode| Default value: ``default``.