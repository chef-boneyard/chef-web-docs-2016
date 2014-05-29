.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |cookbook type_app| cookbook defines the desired state for a working configuration. A working configuration could simply be the base configuration for a node. It may be everything to get a single application---a database **or** a web server---configured and running. It may be everything for the entire stack of applications that will run on a node---a database **and** a web server---configured and running.

A |cookbook type_app| cookbook configures applications as reusable building blocks:

* Execution runtimes, such as |apache tomcat|, |nodejs|, |ruby on rails|
* Web servers, such as |apache 2|, |nginx|
* Databases, such as |apache cassandra|, |mysql|, |postgresql|, |riak|
* Monitoring applications, such as |nagios|, |sensu|, |splunk|, |zabbix|  

Some common charactistics of an |cookbook type_app| cookbook:

* Is associated 1:1 with a working configuration
* One (or more) |cookbook type_app| cookbooks define the desired state for the stack of applications
* Is rarely based on a community cookbook, but often leverages |cookbook type_base| and |cookbook type_wrapper| cookbooks
* Often contains one (or more) dependencies on other cookbooks, typically these dependencies are on |cookbook type_base| and |cookbook type_wrapper| cookbooks, but not always
* Uses recipes to define the parts of the application
* May add custom resources
* Is typically unique to an organization, but often shareable across nodes within that organization
* Is typically the easiest location from which to manage cookbook dependencies

   
   
   
   
   