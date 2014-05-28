.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |cookbook type_app| cookbook defines the desired state for a working configuration. A working configuration could simply be the base configuration for a node. It may be everything to get a single application---a database, a web server, and so on---configured and running. A group of |cookbook type_app| cookbooks can be designed to work together to not only leverage a base configuration, but add web server, database server, execution runtime, and monitoring applications to run on top of the base configuration, effectively building the entire stack of applications that will be the working configuration for a node.

A |cookbook type_app| cookbook configures applications as reusable building blocks:

* Execution runtimes, such as |apache tomcat|, |nodejs|, |ruby on rails|
* Web servers, such as |apache 2|, |nginx|
* Databases, such as |apache cassandra|, |mysql|, |postgresql|, |riak|
* Monitoring applications, such as |nagios|, |sensu|, |splunk|, |zabbix|  

Some common charactistics of an |cookbook type_app| cookbook:

* Is associated 1:1 with a working configuration
* One (or more) |cookbook type_app| cookbooks define the desired state for the stack of applications
* Is rarely based on a community cookbook, but often leverages |cookbook type_library| and |cookbook type_wrapper| cookbooks
* Often contains one (or more) dependencies on other cookbooks, typically these dependencies are on |cookbook type_library| and |cookbook type_wrapper| cookbooks, but not always
* Uses recipes to define the parts of the application
* May add custom resources
* Is typically unique to an organization, but often shareable across nodes within that organization
* Is typically the easiest location from which to manage cookbook dependencies

   
   
   
   
   