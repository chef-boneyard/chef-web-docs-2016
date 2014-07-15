.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Bugs found in cookbooks are tracked and managed using |launchpad|:

* View the main project: https://launchpad.net/openstack-chef
* View the list of open bugs: https://bugs.launchpad.net/openstack-chef
* File a new bug: https://bugs.launchpad.net/openstack-chef/+filebug

There are some nice to have guidelines for filing a new bug:

* Summary: Should look something like [cookbook] short description of the issue where [cookbook] is the effected cookbook, and the short description is a one sentence description of the issue.
* Tags: Can help us group the issue, they should be higher level, and there is a selection that can be auto completed.
* Status: Please leave this alone, it should be New till someone triages the issue.
* Importance: Should only be touched if it is a Blocker/Gating issue. If it is, please set to High, and only use Critical if you have found a bug that can take down whole infrastructures.

Issues with the |subcommand knife openstack| plugin are tracked using the |company_name| github issue tracking system: https://github.com/opscode/knife-openstack/issues
