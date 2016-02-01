.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.

In versions of the |chef client| prior to version 12.0, this subcommand ONLY works when run against the open source |chef server|; it does not run against |chef server oec| (including hosted |chef server oec|), or |chef private|.

Starting with |chef server| 12.0, this functionality is built into the `chef-server-ctl <http://docs.chef.io/ctl_chef_server.html>`_ command-line tool as part of the following arguments:

* `user-create <http://docs.chef.io/ctl_chef_server.html#user-create>`_
* `user-delete <http://docs.chef.io/ctl_chef_server.html#user-delete>`_
* `user-edit <http://docs.chef.io/ctl_chef_server.html#user-edit>`_
* `user-list <http://docs.chef.io/ctl_chef_server.html#user-list>`_
* `user-show <http://docs.chef.io/ctl_chef_server.html#user-show>`_

Starting with |chef client| version 12.4.1, the ``knife user`` functionality is restored for the following arguments: ``user-edit``, ``user-list``, and ``user-show`` for |chef server| version 12.0 (and higher).
