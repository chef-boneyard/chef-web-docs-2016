.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In versions of the |chef client| prior to version 12.0, this subcommand ONLY works when run against the open source |chef server|; it does not run against |chef server oec| (including hosted |chef server oec|), or |chef private|.

Starting with |chef server| 12.0, this functionality is built into the `chef-server-ctl <http://docs.chef.io/ctl_chef_server.html>`_ command-line tool, specifically the following arguments:

* `user-create <http://docs.chef.io/ctl_chef_server.html#user-create>`_
* `user-delete <http://docs.chef.io/ctl_chef_server.html#user-delete>`_
* `user-edit <http://docs.chef.io/ctl_chef_server.html#user-edit>`_
* `user-list <http://docs.chef.io/ctl_chef_server.html#user-list>`_
* `user-show <http://docs.chef.io/ctl_chef_server.html#user-show>`_

Use these arguments to manage user accounts on the |chef server|.

Starting with |chef client| version 12.4.1, the ``knife user`` functionality is restored and may also be used to manage users with |chef server| version 12.0 (and higher).
