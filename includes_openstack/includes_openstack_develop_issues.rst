.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Bugs found in cookbooks are tracked and managed using |launchpad|:

* View the main project: https://launchpad.net/openstack-chef
* View the list of open bugs: https://bugs.launchpad.net/openstack-chef
* File a new bug: https://bugs.launchpad.net/openstack-chef/+filebug

There are some nice to have guidelines for filing a new bug:

* Summary: Should look something like ``[cookbook] short description of the issue`` where [cookbook] is the effected short name of the cookbook, and the short description is a one sentence description of the issue.

* Further information:
  - If adding an attribute, where in the base OpenStack code that attribute can be found, what configuration file and section it goes into, and changes to the default value for chef.
  - if fixing a converge exception, snip-it of log that contains the exception
  - if adding functionality, a brief example of a real world use case
  - if something platform specific, please note that and any platform ref link that might help explain why it needed.
  - if fixing logic, a good before and after flow
  - if added driver or mechanism support, ref links would be nice
  - if fixing spec tests, general summary
  - if bumping gem or cookbook versions, please explain why it needed.

** Extra options **

* Tags: Can help us group the issue, they should be higher level, and there is a selection that can be auto completed.

* Status: Please leave this alone, it should be New till someone triages the issue.

* Importance: Should only be touched if it is a Blocker/Gating issue. If it is, please set to High, and only use Critical if you have found a bug that can take down whole infrastructures.

Issues with the |subcommand knife openstack| plugin are tracked using the |company_name| github issue tracking system: https://github.com/opscode/knife-openstack/issues
