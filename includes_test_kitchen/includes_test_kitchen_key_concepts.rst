.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The key concepts in |kitchen| are:

* A platform is the operating system or target environment on which a cookbook is to be tested
* A suite is the |chef client| configuration, a run-list, and (optionally) node attributes
* An instance is the combination of a specific platform and a specific suite, with each instance being assigned an auto-generated name
* A driver is the lifecycle that implements the actions associated with a specific instance---create the instance, do what is needed to converge on that instance (such as installing the |chef client|, uploading cookbooks, starting the |chef client| run, and so on), setup anything else needed for testing, verify one (or more) suites post-converge, and then destroy that instance 
* A provisioner is the component on which the |chef client| code will be run, either using |chef zero| or |chef solo| via the ``chef_zero`` and ``chef_solo`` provisioners, respectively
