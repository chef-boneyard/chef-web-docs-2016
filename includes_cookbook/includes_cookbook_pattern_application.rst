.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |cookbook type_application| cookbook defines the desired state for an application---the base configuration for a machine, a website, an API, a database, a load balancer, and so on. Some common charactistics of an |cookbook type_application| cookbook include:

* Is associated 1:1 with an application
* One (or more) |cookbook type_application| cookbooks define the desired state for an entire node
* Is rarely based on a community cookbook, but often leverages |cookbook type_library| and |cookbook type_wrapper| cookbooks
* Uses recipes to define the parts of the application
* May add custom resources
* Is typically unique to an organization, but often shareable across machines within that organization
* Cookbook dependencies are easier to manage using |cookbook type_application| cookbooks

