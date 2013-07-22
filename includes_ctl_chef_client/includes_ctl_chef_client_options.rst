.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-client OPTION VALUE OPTION VALUE ...

This command has the following options:

``-A``, ``--fatal-windows-admin-check``
   |fatal_windows_admin_check|

``-c CONFIG``, ``--config CONFIG``
   |config chef-client|

``-d``, ``--daemonize``
   |daemonize| This option is only available on machines that run in |unix| or |linux| environments. For machines that are running |windows| that require similar functionality, use the ``chef-client::service`` recipe in the ``chef-client`` cookbook: http://community.opscode.com/cookbooks/chef-client. This will install a |chef client| service under |windows| using the |windows service wrapper|.

``-E ENVIRONMENT_NAME``, ``--environment ENVIRONMENT_NAME``
   |name environment|

``-f``, ``--fork``
   |fork_chef|

``-F FORMAT``, ``--format FORMAT``
   |format|

``--force-formatter``
   |force_formatter|

``--force-logger``
   |force_logger|

``-g GROUP``, ``--group GROUP``
   |group chef-client|

``-h``, ``--help``
   |help subcommand|

``-i SECONDS``, ``--interval SECONDS``
   |interval|

``-j PATH``, ``--json-attributes PATH``
   |json_attribs|

``-k KEY_FILE``, ``--client-key KEY_FILE``
   |client_key| Default value: ``/etc/chef/client.pem``.

``-K KEY_FILE``, ``--validation_key KEY_FILE``
   |validation_key|

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOGLOCATION``, ``--logfile c``
   |log_location| This is recommended when starting any executable as a daemon.

``--[no-]color``
   |no-color| Default setting: ``--color``.

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node name chef-client|

``-o RUN_LIST_ITEM``, ``--override-runlist RUN_LIST_ITEM``
   |override_runlist|

``--once``
   |once|

``-P PID_FILE``, ``--pid PID_FILE``
   |pid_file|

``-R``, ``--enable-reporting``
   |enable_reporting|

``-s SECONDS``, ``--splay SECONDS``
   |splay|

``-S CHEF_SERVER_URL``, ``--server CHEF_SERVER_URL``
   |chef_server_url|

``-u USER``, ``--user USER``
   |user chef-client|

``-v``, ``--version``
   |version chef|

``-W``, ``--why-run``
   |whyrun_mode|





