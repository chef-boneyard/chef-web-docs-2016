.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   pushy-client OPTION VALUE OPTION VALUE ...

This command has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config chef-client| This is the same configuration file used by |push jobs|. Default value: ``Chef::Config.platform_specific_path("/etc/chef/client.rb")``.

``-h``, ``--help``
   |help subcommand|

``-k KEY_FILE``, ``--client-key KEY_FILE``
   |client_key|

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOCATION``, ``--logfile LOCATION``
   |log_location| This is recommended when starting any executable as a daemon.

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node name chef-client|

``-S URL``, ``--server URL``
   |chef_server_url|

``-v``, ``--version``
   |version push jobs|







