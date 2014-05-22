.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |cookbook type_app| cookbook defines the desired state for a working configuration. A working configuration could simply be the base configuration for a machine. It may also be a set of applications that rely on the base configuration, such as a web server, a database server, or a load balancer, with each component of this set of applications being defined by an |cookbook type_app| cookbook.

Some common charactistics of an |cookbook type_app| cookbook:

* Is associated 1:1 with a working configuration
* One (or more) |cookbook type_app| cookbooks define the desired state for the stack of applications
* Is rarely based on a community cookbook, but often leverages |cookbook type_library| and |cookbook type_wrapper| cookbooks
* Uses recipes to define the parts of the application
* May add custom resources
* Is typically unique to an organization, but often shareable across machines within that organization
* Is typically the easiest location from which to manage cookbook dependencies

