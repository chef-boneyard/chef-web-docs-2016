.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. note:: This command is experimental and is built around the idea that there should be a middle ground between the "one cookbook per repo" and the "all cookbooks in one repo" approaches.

The |subcommand chef generate_app| subcommand is used to generate a cookbook structure that:

* Supports multiple cookbooks (as many as needed to support an "application")
* Supports a top-level instance of |kitchen| that can be used to test each cookbook in the appication
* Supports a single |policyfile rb|, which is an upcoming feature of the |chef dk| that defines a workflow around a set of cookbooks and related policy (such as roles, environments, and so on); for more information about |policyfile rb|, see the chef.lists discussions (search for "policyfile")

