.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |cookbook type_policy| cookbook applies |chef server| policy objects to groups of nodes, including how roles, environments, data bags, and cookbook versions are applied to an organization's workflow.

Some common charactistics of a |cookbook type_policy| cookbook:

* Is typically associated 1:1 with a |chef server| policy object
* Sometimes makes a small number of specific changes to |cookbook type_library|, |cookbook type_wrapper|, or |cookbook type_app| cookbooks
* Is sometimes extended to meet organizational requirements
* Is unique to an organization
* Relies on cookbook versions to be frozen, and then pinned to specific |cookbook type_policy| cookbooks
* Should follow a naming pattern that is based preceded by a name that is used globally across the organization, e.g. ``organization_name-policy_name``
