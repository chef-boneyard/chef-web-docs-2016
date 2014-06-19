.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``--chef-repo-path PATH``
   Use to override the location of the |chef repo|. Default value: same as ``chef_repo_path`` in the |client rb| file.

``--chef-zero-host IP``
   Use to override the host on which |chef zero| listens. Default value: ``127.0.0.1``.

``--chef-zero-port PORT``
   Use to override the port to which |chef zero| binds. Default value: ``8900``.

``--repo-mode MODE``
   Use to specify the local |chef repo| layout. Possible values: ``static`` (for environments, roles, data bags, and cookbooks), ``everything`` (same as static, plus nodes, clients, and users), ``hosted_everything`` (for ACLs, groups). Default value: ``everything/hosted_everything``.

