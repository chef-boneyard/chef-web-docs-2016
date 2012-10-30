.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |server rb| file is used to specify the configuration details for the following executable: |chef exec solo|. This file is the default configuration file and is loaded every time this executable is run. The |chef exec solo| executable can be run as a daemon. The configuration file is located at: |path chef server rb|.





Each Chef executable is configured through the Chef::Config object. When the executables are run, they load the default config file. Some settings are applicable only when the executable is run as a daemon, so whether daemonizing is possible is noted here.

Executable	 Config File	 Daemon?
chef-solo	/etc/chef/solo.rb	 Yes
chef-client	/etc/chef/client.rb	 Yes
chef-server	/etc/chef/server.rb	 Yes
chef-server-webui	/etc/chef/server.rb	 Yes
chef-solr	/etc/chef/solr.rb	 Yes
chef-solr-indexer	/etc/chef/solr.rb	 Yes
chef-solr-rebuild	/etc/chef/solr.rb	 No
knife	~/.chef/knife.rb	 No
If the file is not found, default values are used from Chef::Config.

In this page, settings are first listed in the Ruby DSL context, followed by a description of the setting and applicable executable context. Similar settings, such as those used only in the webui, are grouped together.



