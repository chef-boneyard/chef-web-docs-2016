.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is included in Chef Delivery docs

A workstation is a computer that is configured to run various |chef| command-line tools that synchronize with a |chef repo|, author cookbooks, interact with the |chef server|, or interact with applications like |chef delivery|.

The workstation is the location from which most users do most of their work, including:

* Developing cookbooks and recipes (and authoring them using |ruby| syntax and patterns)
* Keeping the |chef repo| synchronized with version source control
* Using |knife| to upload items from the |chef repo| to the |chef server|
* Using the |chef ctl| command-line tool that is packaged in the |chef dk|
* Using the |chef delivery_cli| command-line tool packaged with |chef delivery|
* Configuring organizational policy, including defining roles and environments and ensuring that critical data is stored in data bags
* Interacting with nodes, as (or when) required, such as performing a bootstrap operation
