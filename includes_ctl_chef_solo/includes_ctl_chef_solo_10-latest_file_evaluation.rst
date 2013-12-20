.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In |chef 10| and lower, library, attribute, lightweight resource, and resource definition files are loaded in undefined order (based on the order given by the |ruby| Hash implementation, which differs based on version and vendor patching). 

This behavior is changed, starting with |chef 11|. Files are loaded according to the following logic:

* The expanded run_list is converted into a list of cookbooks in the same order
* Each cookbook's dependencies are inserted into the cookbook list before the cookbook that depends on them.
* Duplicates are removed

For users of |chef solo| , the new loading logic means that files belonging to cookbooks which exist in the ``cookbook_path`` but are not in the expanded ``run_list`` or dependencies of the cookbooks in the expanded ``run_list`` will no longer be loaded (in |chef 10|, all non-recipe files from all cookbooks in the cookbook path were loaded). Additionally, |chef solo| users will now see ``CookbookNotFound`` errors when a cookbook is listed as a dependency in the metadata but not present on disk. The error message will look like this:

.. code-block:: bash

   FATAL: Chef::Exceptions::CookbookNotFound: Cookbook runit not found. If you're loading runit from another cookbook, make sure you configure the dependency in your metadata


