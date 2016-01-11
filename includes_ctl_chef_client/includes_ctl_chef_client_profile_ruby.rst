.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-client.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``--profile-ruby`` option to dump a (large) profiling graph into ``/var/chef/cache/graph_profile.out``. Use the graph output to help identify, and then resolve performance bottlenecks in a |chef client| run. This option:

* Generates a large amount of data about the |chef client| run
* Has a dependency on the ``ruby-prof`` gem, which is packaged as part of |chef| and the |chef dk|
* Increases the amount of time required to complete the |chef client| run
* Should not be used in a production environment
