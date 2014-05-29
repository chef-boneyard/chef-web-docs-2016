.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef server| policy---roles, environments, and cookbook versions---are typically managed as policy objects on the server itself. A |cookbook type_policy| cookbook applies the |chef server| policy to groups of nodes. Using a cookbook to manage |chef server| policy objects is not common and almost always only for the role policy object, and then cookbook versions are pinned to environments.

.. warning:: This approach is often done using the policy objects themselves---the roles and environments on the |chef server|---by using the run-list to define the policy and by using attributes as needed to make specific settings changes.

Some common charactistics of a |cookbook type_policy| cookbook:

* Is typically associated 1:1 with a |chef server| policy object
* Sometimes makes a small number of specific changes to |cookbook type_base|, |cookbook type_wrapper|, or |cookbook type_app| cookbooks
* Is sometimes extended to meet organizational requirements
* Is unique to an organization
* Relies on cookbook versions to be frozen, and then pinned to specific |cookbook type_policy| cookbooks
* Should follow a naming pattern that is based preceded by a name that is used globally across the organization, e.g. ``organization_name-policy_name``
