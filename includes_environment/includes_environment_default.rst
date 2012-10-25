.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Every |chef| organization must have at least one environment. Every |chef| organization starts out with a single environment that is named ``_default``, which ensures that an environment is always available to the |chef server|. The ``_default`` environment cannot be modified in any way. Nodes, roles, run-lists, cookbooks (and cookbook versions), and attributes specific to an organization can only be associated with a custom environment.

**jamescott: is it true that the _default environment cannot be modified? But that things like nodes and stuff can be added to them? It would make sense that nodes and stuff could be associated with the _default environment; it's custom environment settings that are required for a new environment.**

