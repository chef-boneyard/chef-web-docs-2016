.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Every organization must have at least one environment. Every organization starts out with a single environment that is named ``_default``, which ensures that at least one environment is always available to the |chef server|. The ``_default`` environment cannot be modified in any way. Nodes, roles, run-lists, cookbooks (and cookbook versions), and attributes specific to an organization can only be associated with a custom environment.
