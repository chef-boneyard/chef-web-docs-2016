.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. warning:: Policy is a new (and expiremental) feature released in the 0.3.0 version of the |chef dk|. Policy will make improvements to how the code that is used to manage your infrastructure is authored, tested, and distributed. Policy is configured using a policy file.

A policy file allows you to specify in a single document the cookbook revisions and recipes that should be applied by the |chef client|. A policy file is uploaded to the |chef server|, where it is associated with a group of nodes. When these nodes are configured by the |chef client|, the |chef client| will make decisions based on settings in the policy file, and will build a run-list based on that information. A policy file may be versioned, and then promoted through deployment stages to safely and reliably deploy new configuration. A policy ile is a |ruby| file, in which a run-list and cookbook locations are specified. For example:

.. code-block:: ruby

   name "jenkins"
   default_source :community
   run_list "java", "jenkins::master", "recipe[policyfile_demo]"
   cookbook "policyfile_demo", path: "cookbooks/policyfile_demo"

.. warning:: This feature is new and expiremental. Some aspects of the design have not yet been finalized. If you are new to |chef|, please don't use it. If you are an experienced user, please try it out and provide feedback. If you do use it, please do so in a location that is isolated from production code.

For more information about policy and the configuration file used to manage and maintain policy---policyfile.rb---please see this topic on Github: https://gist.github.com/danielsdeleo/52c90c9e3c9c76b80316.