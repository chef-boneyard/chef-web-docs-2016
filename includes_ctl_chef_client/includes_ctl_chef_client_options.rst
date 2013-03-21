.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-client OPTION VALUE OPTION VALUE ...

This command has the following options:

``-A``, ``--fatal-windows-admin-check``
   Indicates that a |chef| run should fail if the |chef client| does not have administrator privileges in |windows|.

``-c CONFIG``, ``--config CONFIG``
   |config chef-client|

``-d``, ``--daemonize``
   |daemonize| This option is only available on machines that run in |unix| or |linux| environments. For machines that are running |windows| that require similar functionality, use the ``chef-client::service`` recipe in the ``chef-client`` cookbook: http://community.opscode.com/cookbooks/chef-client. This will install a |chef client| service under |windows| using the |windows service wrapper|.

``-E ENVIRONMENT_NAME``, ``--environment ENVIRONMENT_NAME``
   |environment chef-client|

``-f``, ``--fork``
   Indicates that a |chef| run will be contained in a secondary process with dedicated RAM. When the |chef| run is complete the RAM will be returned to the master process. This option helps ensure that a |chef client| will use a steady amount of RAM over time because the master process will not run recipes. This option will also help prevent memory leaks (such as those that can be introduced by the code contained within a poorly designed cookbook).

``-F FORMATTER``, ``--format FORMATTER``
   The output format.

``--force-formatter``
   Indicates that formatter output will be used instead of logger output.

``--force-logger``
   Indicates that logger output will be used instead of formatter output.

``-g GROUP``, ``--group GROUP``
   |group chef-client|

``-h``, ``--help``
   |help chef-client|

``-i SECONDS``, ``--interval SECONDS``
   |interval|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json_attribs|

``-k KEY_FILE``, ``--client-key KEY_FILE``
   |client_key|

``-K KEY_FILE``, ``--validation_key KEY_FILE``
   |validation_key|

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

``--once``
   |once|

``-P PID_FILE``, ``--pid PID_FILE``
   |pid_file|

``-R``, ``--enable-reporting``
   Indicates that data collection reporting during |chef| runs is enabled.

``-s SECONDS``, ``--splay SECONDS``
   |splay|

``-S CHEF_SERVER_URL``, ``--server CHEF_SERVER_URL``
   |chef_server_url|

``-u USER``, ``--user USER``
   |user chef-client|

``-v``, ``--version``
   |version chef|

``-W``, ``--why-run``
   Indicates that the executable will be run in whyrun mode, which is a |chef| run that does everything except modify the system. Use whyrun mode to understand why |chef| makes the decisions that it makes and to learn more about the current and proposed state of the system.





