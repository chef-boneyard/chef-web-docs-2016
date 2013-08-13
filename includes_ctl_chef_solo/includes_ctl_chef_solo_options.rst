.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-solo OPTION VALUE OPTION VALUE ...

This command has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config chef-client|

``-d``, ``--daemonize``
   |daemonize| This option is only available on machines that run in |unix| or |linux| environments. For machines that are running |windows| that require similar functionality, use the ``chef-client::service`` recipe in the ``chef-client`` cookbook: http://community.opscode.com/cookbooks/chef-client. This will install a |chef client| service under |windows| using the |windows service wrapper|.

``-f``, ``--fork``
   Indicates that a |chef client| run will be contained in a secondary process with dedicated RAM. When the |chef client| run is complete the RAM will be returned to the master process. This option helps ensure that a |chef client| will use a steady amount of RAM over time because the master process will not run recipes. This option will also help prevent memory leaks (such as those that can be introduced by the code contained within a poorly designed cookbook).

``-F FORMATTER``, ``--format FORMATTER``
   The output format.

``--force-formatter``
   Indicates that formatter output will be used instead of logger output.

``--force-logger``
   Indicates that logger output will be used instead of formatter output.

``-g GROUP``, ``--group GROUP``
   |name group_process_owner|

``-h``, ``--help``
   |help subcommand|

``-i SECONDS``, ``--interval SECONDS``
   |interval|

``-j PATH``, ``--json-attributes PATH``
   |json attributes|

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOGLOCATION``, ``--logfile c``
   |log_location| This is recommended when starting any executable as a daemon.

``--[no-]color``
   Use ``--no-color`` to disable colored output. Default setting: ``--color``.

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node name chef-client|

``-o RUN_LIST_ITEM``, ``--override-runlist RUN_LIST_ITEM``
   Replace the current run list with the specified items.

``-r RECIPE_URL``, ``--recipe-url RECIPE_URL``
   |recipe_url|

``-s SECONDS``, ``--splay SECONDS``
   |splay|

``-u USER``, ``--user USER``
   |user chef_client|

``-v``, ``--version``
   |version chef|

``-W``, ``--why-run``
   Indicates that the executable will be run in whyrun mode, which is a |chef client| run that does everything except modify the system. Use whyrun mode to understand why the |chef client| makes the decisions that it makes and to learn more about the current and proposed state of the system.









